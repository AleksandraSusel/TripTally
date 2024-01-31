import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../../theme/app_dimensions.dart';
import '../../widgets/welcome_subtitle.dart';
import '../../widgets/welcome_text.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: AppDimensions.d100),
            WelcomeText(),
            SizedBox(height: AppDimensions.d50),
            WelcomeSubtitle(),
          ],
        ),
      ),
    );
  }
}
