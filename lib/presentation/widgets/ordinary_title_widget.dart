import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';

import '../theme/app_dimensions.dart';

class OrdinaryTitleWidget extends StatelessWidget {
  const OrdinaryTitleWidget({super.key, required this.titleText, required this.subtitleText});

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
