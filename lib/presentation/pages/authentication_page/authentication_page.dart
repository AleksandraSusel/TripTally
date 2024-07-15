import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trip_tally/environment.config.dart';
import 'package:trip_tally/injectable/injectable.dart';
import 'package:trip_tally/presentation/pages/authentication_page/bloc/authentication_bloc.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/theme/app_paths.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';
import 'package:trip_tally/presentation/utils/router/app_router.dart';
import 'package:trip_tally/presentation/utils/validators.dart';
import 'package:trip_tally/presentation/widgets/custom_circular_progress_indicator.dart';
import 'package:trip_tally/presentation/widgets/custom_snack_bar.dart';
import 'package:trip_tally/presentation/widgets/custom_text_field.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/account_form_container.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/background_container.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/buttons/apple_sing_in_button.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/buttons/google_sing_in_button.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/buttons/primary_elevated_button.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/buttons/surface_outlined_button.dart';

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
          child: BlocListener<AuthenticationBloc, AuthenticationState>(
            listener: (context, state) => state.whenOrNull(
              failure: (error) => customSnackBar(
                context,
                error.errorText(context),
              ),
              success: () => context.router.replaceAll([const HomeRoute()]),
            ),
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
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final repeatPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool register = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: AccountFormContainer(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Text(
                  context.tr.appName,
                  style: context.tht.headlineLarge,
                ),
                Text(
                  register ? context.tr.authPage_singUpToAcc : context.tr.authPage_singInToAcc,
                  style: context.tht.titleSmall,
                ),
                const SizedBox(height: AppDimensions.d30),
                CustomTextField(
                  hintText: context.tr.email,
                  controller: emailController,
                  validator: (String? value) {
                    return Validator.validateEmail(value, context);
                  },
                ),
                const SizedBox(height: AppDimensions.d30),
                CustomTextField(
                  hintText: context.tr.password,
                  controller: passwordController,
                  hasPassword: true,
                  validator: (String? value) {
                    return Validator.isFieldEmpty(value, context);
                  },
                ),
                const SizedBox(height: AppDimensions.d30),
                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 500),
                  transitionBuilder: (Widget child, Animation<double> animation) {
                    return FadeTransition(
                      opacity: animation,
                      child: child,
                    );
                  },
                  child: Visibility(
                    visible: register,
                    child: CustomTextField(
                      hintText: context.tr.repeatPassword,
                      controller: repeatPasswordController,
                      hasPassword: true,
                      validator: (String? value) {
                        return Validator.isFieldEmpty(value, context);
                      },
                    ),
                  ),
                ),
                const SizedBox(height: AppDimensions.d30),
                BlocBuilder<AuthenticationBloc, AuthenticationState>(
                  builder: (context, state) => state.maybeWhen(
                    orElse: () => Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            GoogleSignInButton(
                              onPressed: onLogin,
                              text: register ? context.tr.authPage_singUpApple : context.tr.authPage_singInApple,
                            ),
                            const SizedBox(height: AppDimensions.d30),
                            AppleSignInButton(
                              onPressed: onLogin,
                              text: register ? context.tr.authPage_singUpApple : context.tr.authPage_singInApple,
                            ),
                          ],
                        ),
                        const SizedBox(height: AppDimensions.d40),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            if (register)
                              PrimaryElevatedButton(
                                text: context.tr.authPage_register,
                                onPressed: () {
                                  setState(() {
                                    register = true;
                                  });
                                  onRegister();
                                },
                              )
                            else
                              SurfaceOutlinedButton(
                                text: context.tr.authPage_register,
                                onPressed: () {
                                  setState(() {
                                    register = true;
                                  });
                                  onRegister();
                                },
                              ),
                            const SizedBox(
                              width: AppDimensions.d10,
                            ),
                            if (register)
                              SurfaceOutlinedButton(
                                text: context.tr.authPage_singIn,
                                onPressed: () {
                                  setState(() {
                                    register = false;
                                  });
                                  onLogin();
                                },
                              )
                            else
                              PrimaryElevatedButton(
                                text: context.tr.authPage_singIn,
                                onLongPressed: () {
                                  emailController.text = EnvConfig.email;
                                  passwordController.text = EnvConfig.password;
                                },
                                onPressed: () {
                                  setState(() {
                                    register = false;
                                  });
                                  onLogin();
                                },
                              ),
                          ],
                        ),
                      ],
                    ),
                    loading: () => const CustomCircularProgressIndicator(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onLogin() {
    if (_formKey.currentState?.validate() ?? false) {
      context.read<AuthenticationBloc>().add(
            OnTapLoginEvent(
              email: emailController.text,
              password: passwordController.text,
            ),
          );
    }
  }

  void onRegister() {
    if (_formKey.currentState?.validate() ?? false) {
      context.read<AuthenticationBloc>().add(
            OnTapRegisterEvent(
              email: emailController.text,
              password: passwordController.text,
              repeatPassword: repeatPasswordController.text,
            ),
          );
    }
  }
}
