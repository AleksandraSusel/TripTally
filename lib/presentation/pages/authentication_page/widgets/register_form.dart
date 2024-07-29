import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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

class RegisterForm extends StatefulWidget {
  const RegisterForm({
    required this.onSwitchForm,
    required this.email,
    required this.password,
    super.key,
  });

  final String email;
  final String password;
  final void Function(String email, String password) onSwitchForm;

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  late final TextEditingController emailController;

  late final TextEditingController passwordController;

  final repeatPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    emailController = TextEditingController(text: widget.email);
    passwordController = TextEditingController(text: widget.password);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Text(
            context.tr.appName,
            style: context.tht.headlineLarge,
          ).animate().moveY(begin: 10, duration: 400.ms),
          Text(
            context.tr.authPage_singUpToAcc,
            style: context.tht.titleSmall,
          ).animate().moveY(begin: 10, duration: 400.ms),
          const SizedBox(height: AppDimensions.d30),
          CustomTextField(
            labelText: context.tr.email,
            controller: emailController,
            validator: (String? value) {
              return Validator.validateEmail(value, context);
            },
          ).animate().moveY(begin: 10, duration: 400.ms),
          const SizedBox(height: AppDimensions.d30),
          CustomTextField(
            labelText: context.tr.password,
            controller: passwordController,
            hasPassword: true,
            validator: (String? value) {
              return Validator.isFieldEmpty(value: value, context: context);
            },
          ).animate().moveY(begin: 10, duration: 400.ms),
          const SizedBox(height: AppDimensions.d30),
          CustomTextField(
            labelText: context.tr.repeatPassword,
            controller: repeatPasswordController,
            hasPassword: true,
            validator: (String? value) {
              return Validator.isFieldEmpty(value: value, context: context);
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
                        onPressed: onRegister,
                        text: context.tr.authPage_singUpGoogle,
                      ),
                      const SizedBox(height: AppDimensions.d30),
                      AppleSignInButton(
                        onPressed: onRegister,
                        text: context.tr.authPage_singUpApple,
                      ),
                    ],
                  ),
                  const SizedBox(height: AppDimensions.d40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      PrimaryElevatedButton(
                        text: context.tr.authPage_singUp,
                        onPressed: onRegister,
                      ),
                      const SizedBox(
                        width: AppDimensions.d10,
                      ),
                      SurfaceOutlinedButton(
                        text: context.tr.authPage_singIn,
                        onPressed: () => widget.onSwitchForm(emailController.text, passwordController.text),
                      ),
                    ],
                  ),
                ],
              ).animate().moveY(begin: -15, duration: 400.ms),
              loading: () => const CustomCircularProgressIndicator(),
            ),
          ),
        ],
      ),
    );
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
