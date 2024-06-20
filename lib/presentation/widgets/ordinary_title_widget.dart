import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';

class OrdinaryTitleWidget extends StatelessWidget {
  const OrdinaryTitleWidget({
    required this.titleText,
    required this.subtitleText,
    super.key,
  });

  final String titleText;
  final String subtitleText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(titleText, style: context.tht.displayLarge),
        const SizedBox(height: AppDimensions.d40),
        Text(subtitleText, style: context.tht.displaySmall),
        const SizedBox(height: AppDimensions.d80),
      ],
    );
  }
}
