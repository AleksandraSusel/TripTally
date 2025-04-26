import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:trip_tally/firebase_options.dart';
import 'package:trip_tally/injectable/injectable.dart';
import 'package:trip_tally/presentation/pages/bloc/app_bloc.dart';
import 'package:trip_tally/presentation/pages/bloc/app_state.dart';
import 'package:trip_tally/presentation/theme/theme_manager.dart';
import 'package:trip_tally/presentation/utils/basic_state.dart';
import 'package:trip_tally/presentation/utils/router/app_router.dart';
import 'package:trip_tally/presentation/utils/translation/generated/l10n.dart';
import 'package:trip_tally/presentation/widgets/custom_circular_progress_indicator.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/text_scale_wrapper.dart';

Future<void> main() async {
  await _configureSystemUIOverlays();
  await _configureServices();
  await configureDependencies();
  runApp(const MyApp());
}

Future<void> _configureSystemUIOverlays() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
}

Future<void> _configureServices() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AppBloc>()..add(const OnInitializeAppEvent()),
      child: BlocListener<AppBloc, BasicState<void>>(
        listener: (context, state) => switch (state) {
          LoadedState(data: final _) => getIt<AppRouter>().replaceAll([AuthenticationRoute()]),
          SuccessState() => getIt<AppRouter>().replaceAll([const HomeRoute()]),
          ToLoginPage() => getIt<AppRouter>().replaceAll([AuthenticationRoute()]),
          LoadingState() => const CustomCircularProgressIndicator(),
          _ => null,
        },
        child: TextScaleWrapper(
          child: MaterialApp.router(
            routerConfig: getIt<AppRouter>().config(),
            localizationsDelegates: const [
              Translation.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: const [
              Locale('en', 'EN'),
            ],
            localeResolutionCallback: (locale, supportedLocales) {
              if (locale == null) return supportedLocales.first;

              return supportedLocales.firstWhere(
                (e) => e.languageCode == locale.languageCode && e.countryCode == locale.countryCode,
                orElse: () => supportedLocales.firstWhere(
                  (c) => c.languageCode == locale.languageCode,
                  orElse: () => supportedLocales.first,
                ),
              );
            },
            theme: getIt<ThemeManager>().getTheme(),
          ),
        ),
      ),
    );
  }
}
