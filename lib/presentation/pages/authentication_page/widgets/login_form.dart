import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trip_tally/environment.config.dart';
import 'package:trip_tally/presentation/pages/authentication_page/bloc/authentication_bloc.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/utils/validators.dart';
import 'package:trip_tally/presentation/widgets/custom_circular_progress_indicator.dart';
import 'package:trip_tally/presentation/widgets/custom_text_field.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/buttons/apple_sing_in_button.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/buttons/google_sing_in_button.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/buttons/primary_elevated_button.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/buttons/surface_outlined_button.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    required this.onSwitchForm,
    super.key,
  });

  final VoidCallback onSwitchForm;

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Text(
            context.tr.appName,
            style: context.tht.headlineLarge,
          ),
          Text(
            context.tr.authPage_singInToAcc,
            style: context.tht.titleSmall,
          ),
          const SizedBox(height: AppDimensions.d30),
          CustomTextField(
            hintText: context.tr.email,
            controller: emailController,
            validator: (String? value) {
              return Validator.validateEmail(value, context);
            },
          ).animate().slideX(begin: 1),
          const SizedBox(height: AppDimensions.d30),
          CustomTextField(
            hintText: context.tr.password,
            controller: passwordController,
            hasPassword: true,
            validator: (String? value) {
              return Validator.isFieldEmpty(value, context);
            },
          ).animate().slideX(begin: 1),
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
                        text: context.tr.authPage_singInGoogle,
                      ),
                      const SizedBox(height: AppDimensions.d30),
                      AppleSignInButton(
                        onPressed: onLogin,
                        text: context.tr.authPage_singInApple,
                      ),
                    ],
                  ),
                  const SizedBox(height: AppDimensions.d40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SurfaceOutlinedButton(
                        text: context.tr.authPage_register,
                        onPressed: widget.onSwitchForm,
                      ),
                      const SizedBox(
                        width: AppDimensions.d10,
                      ),
                      PrimaryElevatedButton(
                        text: context.tr.authPage_singIn,
                        onLongPressed: () {
                          emailController.text = EnvConfig.email;
                          passwordController.text = EnvConfig.password;
                        },
                        onPressed: onLogin,
                      ),
                    ],
                  ).animate().fadeIn(duration: 600.ms),
                ],
              ),
              loading: () => const CustomCircularProgressIndicator(),
            ),
          ),
        ],
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
}
