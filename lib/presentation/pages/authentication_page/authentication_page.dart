import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trip_tally/injectable/injectable.dart';
import 'package:trip_tally/presentation/pages/authentication_page/bloc/authentication_bloc.dart';
import 'package:trip_tally/presentation/pages/authentication_page/bloc/authentication_state.dart';
import 'package:trip_tally/presentation/pages/authentication_page/widgets/login_form.dart';
import 'package:trip_tally/presentation/pages/authentication_page/widgets/register_form.dart';
import 'package:trip_tally/presentation/theme/app_paths.dart';
import 'package:trip_tally/presentation/utils/basic_state.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';
import 'package:trip_tally/presentation/utils/router/app_router.dart';
import 'package:trip_tally/presentation/widgets/custom_snack_bar.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/account_form_container.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/background_container.dart';

@RoutePage()
class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({
    super.key,
    @visibleForTesting this.bloc,
  });

  final AuthenticationBloc? bloc;

  @override
  Widget build(BuildContext context) {
    return BackgroundContainer(
      asset: AppPaths.beach,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: BlocProvider(
          create: (context) => bloc ?? getIt<AuthenticationBloc>(),
          child: BlocListener<AuthenticationBloc, BasicState<void>>(
            listener: (context, state) => switch (state) {
              FailureState(error: final error) => showSnackBar(context, error.errorText(context)),
              Registered() => context.router.replaceAll([WelcomeRoute()]),
              Logged() => context.router.replaceAll([const HomeRoute()]),
              _ => null,
            },
            child: const _Body(),
          ),
        ),
      ),
    );
  }
}

class _Body extends StatefulWidget {
  const _Body();

  @override
  State<_Body> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  bool register = false;
  String _email = '';
  String _password = '';

  void switchForm(String email, String password) {
    setState(() {
      register = !register;
      _email = email;
      _password = password;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: AccountFormContainer(
          child: register
              ? RegisterForm(
                  email: _email,
                  password: _password,
                  onSwitchForm: switchForm,
                )
              : LoginForm(
                  email: _email,
                  password: _password,
                  onSwitchForm: switchForm,
                ),
        ).animate().scale(delay: 200.ms),
      ),
    );
  }
}
