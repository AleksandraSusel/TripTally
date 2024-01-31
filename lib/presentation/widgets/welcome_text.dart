import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: context.tr.welcomeText_welcomeIn,
            style: context.tht.displayLarge,
          ),
          TextSpan(
            text: context.tr.welcomeText_trip,
            style: context.tht.headlineLarge,
          ),
          TextSpan(
            text: context.tr.welcomeText_tally,
            style: context.tht.displayLarge,
          ),
        ],
      ),
    );
  }
}
