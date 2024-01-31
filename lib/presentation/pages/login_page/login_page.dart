import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/widgets/custom_text_field.dart';

import '../../theme/app_dimensions.dart';
import '../../widgets/custom_floating_action_button.dart';
import '../../widgets/welcome_text.dart';
import 'widgets/welcome_subtitle.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: AppDimensions.d100),
            const WelcomeText(),
            const SizedBox(height: AppDimensions.d50),
            const WelcomeSubtitle(),
            const SizedBox(height: AppDimensions.d50),
            Text(
              context.tr.login,
              style: context.tht.displayMedium,
            ),
            const SizedBox(height: AppDimensions.d50),
            CustomTextField(
              hintText: context.tr.email,
            ),
            CustomTextField(
              hintText: context.tr.password,
            ),
            const SizedBox(height: AppDimensions.d130),
            CustomFloatingActionButton(
              text: context.tr.login,
              onPressed: () {},
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Text(
                'or',
                style: context.tht.headlineSmall,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                context.tr.registration,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
