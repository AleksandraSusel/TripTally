import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/utils/router/app_router.dart';
import 'package:trip_tally/presentation/widgets/custom_text_field.dart';

import '../../theme/app_dimensions.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: AppDimensions.d68),
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
                  validator: (String? emailController) {
                    return (emailController == null && emailController == '') ? context.tr.registration_page_fieldCanNotBeEmpty : null;
                  },
                ),
                CustomTextField(
                  hintText: context.tr.password,
                  controller: passwordController,
                  hasPassword: true,
                  validator: (String? passwordController) {
                    return (passwordController == null && passwordController == '')
                        ? context.tr.registration_page_fieldCanNotBeEmpty
                        : null;
                  },
                ),
                const SizedBox(height: AppDimensions.d120),
                CustomFloatingActionButton(
                  text: context.tr.login,
                  onPressed: () {},
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
    );
  }
}
