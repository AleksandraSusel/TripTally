import 'package:alchemist/alchemist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trip_tally/presentation/theme/theme_manager.dart';
import 'package:trip_tally/presentation/utils/enums/string_extensions.dart';
import 'package:trip_tally/presentation/utils/translation/generated/l10n.dart';

const defaultConstraints = BoxConstraints(maxWidth: 375, maxHeight: 812);

class LocalizationObserver extends NavigatorObserver {
  LocalizationObserver({
    required this.locale,
    required this.delegates,
  });

  final Locale locale;
  final List<LocalizationsDelegate<dynamic>> delegates;

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPush(route, previousRoute);
    _ensureLocalizationForRoute(route);
  }

  void _ensureLocalizationForRoute(Route<dynamic> route) {
    if (route is ModalRoute) {
      final modalContext = route.subtreeContext;
      if (modalContext != null) {
        Localizations.override(
          context: modalContext,
          locale: locale,
          delegates: delegates,
        );
      }
    }
  }
}

@isTest
Future<void> runGoldenTest(
  String name, {
  required Widget Function() builder,
  Interaction? whilePerforming,
  BoxConstraints constrains = defaultConstraints,
  double textScaleFactor = 1.0,
}) async {
  final navigatorObserver = LocalizationObserver(
    locale: const Locale('en'),
    delegates: const [
      Translation.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ],
  );

  await goldenTest(
    name,
    fileName: name.toSnakeCase,
    builder: () => MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeManager().getTheme(),
      localizationsDelegates: const [
        Translation.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: Translation.delegate.supportedLocales,
      locale: const Locale('en'),
      navigatorObservers: [navigatorObserver],
      home: builder(),
    ),
    constraints: constrains,
    textScaleFactor: textScaleFactor,
    pumpBeforeTest: precacheImages,
    whilePerforming: (tester) async {
      await whilePerforming?.call(tester);
      await tester.pumpAndSettle();
      return;
    },
  );
}
