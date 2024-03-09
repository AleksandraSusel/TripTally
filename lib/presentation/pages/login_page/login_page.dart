import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/utils/router/app_router.dart';
import 'package:trip_tally/presentation/widgets/custom_text_field.dart';

import '../../theme/app_dimensions.dart';
import '../../utils/validators.dart';
import '../../widgets/custom_floating_action_button.dart';
import '../../widgets/welcome_subtitle.dart';
import '../../widgets/welcome_text.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  const SizedBox(height: AppDimensions.d40),
                  const WelcomeText(),
                  const SizedBox(height: AppDimensions.d40),
                  const WelcomeSubtitle(),
                  const SizedBox(height: AppDimensions.d80),
                  Text(
                    context.tr.login,
                    style: context.tht.displayMedium,
                  ),
                  const SizedBox(height: AppDimensions.d20),
                  CustomTextField(
                    hintText: context.tr.email,
                    controller: emailController,
                    validator: (String? value) {
                      return Validator.validateEmail(value, context);
                    },
                  ),
                  CustomTextField(
                    hintText: context.tr.password,
                    controller: passwordController,
                    hasPassword: true,
                    validator: (String? value) {
                      return Validator.isFieldEmpty(value, context);
                    },
                  ),
                  const SizedBox(height: AppDimensions.d126),
                  CustomFloatingActionButton(
                    text: context.tr.login,
                    onPressed: onPressed,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: AppDimensions.d20),
                    child: Text(
                      context.tr.or,
                      style: context.tht.headlineSmall,
                    ),
                  ),
                  TextButton(
                    onPressed: () => context.router.push(RegistrationRoute()),
                    child: Text(
                      context.tr.registration,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void onPressed() {
    if (_formKey.currentState?.validate() ?? false) {
      () {};
    }
  }
}
