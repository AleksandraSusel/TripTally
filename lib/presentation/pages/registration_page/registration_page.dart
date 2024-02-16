import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/utils/router/app_router.dart';

import '../../theme/app_dimensions.dart';
import '../../widgets/custom_floating_action_button.dart';
import '../../widgets/custom_text_field.dart';
import '../../widgets/welcome_subtitle.dart';
import '../../widgets/welcome_text.dart';

@RoutePage()
class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: AppDimensions.d68),
            const WelcomeText(),
            const SizedBox(height: AppDimensions.d40),
            const WelcomeSubtitle(),
            const SizedBox(height: AppDimensions.d100),
            Text(
              context.tr.registration,
              style: context.tht.displayMedium,
            ),
            const SizedBox(height: AppDimensions.d20),
            CustomTextField(
              hintText: context.tr.email,
              controller: '',
            ),
            CustomTextField(
              hintText: context.tr.password,
              controller: '',
              hasPassword: true,
            ),
            CustomTextField(
              hintText: context.tr.repeatPassword,
              controller: '',
              hasPassword: true,
            ),
            const SizedBox(height: AppDimensions.d50),
            CustomFloatingActionButton(
              text: context.tr.registration,
              onPressed: () {},
            ),
            Padding(
              padding: const EdgeInsets.only(top: AppDimensions.d20),
              child: Text(
                'or',
                style: context.tht.headlineSmall,
              ),
            ),
            TextButton(
              onPressed: () => context.router.push(const LoginRoute()),
              child: Text(
                context.tr.login,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
