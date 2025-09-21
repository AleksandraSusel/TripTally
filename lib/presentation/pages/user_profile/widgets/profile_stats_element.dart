import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';

class ProfileStatsElement extends StatelessWidget {
  const ProfileStatsElement({
    required this.title,
    required this.value,
    super.key,
  });

  final String title;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: context.tht.labelSmall?.copyWith(
            color: context.thc.primary,
          ),
          textAlign: TextAlign.center,
        ),
        Text(
          value,
          style: context.tht.labelSmall?.copyWith(
            color: context.thc.primary,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
