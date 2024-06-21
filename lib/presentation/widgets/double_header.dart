import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';

class DoubleHeader extends StatelessWidget {
  const DoubleHeader({
    required this.title,
    required this.subtitle,
    super.key,
  });

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(AppDimensions.d8),
          child: Text(
            title,
            style: context.tht.displayMedium,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(AppDimensions.d8),
              child: Text(
                subtitle,
                style: context.tht.headlineSmall,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
