import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';

class WelcomePageHeadline extends StatelessWidget {
  const WelcomePageHeadline({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          context.tr.welcomePage_WelcomeTo,
          style: context.tht.titleSmall,
        ).animate().fadeIn(delay: 400.ms, duration: 600.ms),
        Text(
          context.tr.appName,
          style: context.tht.headlineLarge,
        ).animate().fadeIn(delay: 600.ms, duration: 600.ms),
        Text(
          context.tr.appDescription,
          style: context.tht.titleSmall,
        ).animate().fadeIn(delay: 800.ms, duration: 600.ms),
      ],
    );
  }
}
