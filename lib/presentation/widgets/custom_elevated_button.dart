import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/theme/theme_manager.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    required this.onPressed,
    required this.text,
    super.key,
  });

  final VoidCallback onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ThemeManager().sideShadow,
      width: AppDimensions.d300,
      height: AppDimensions.d56,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: context.tht.labelMedium,
        ),
      ),
    );
  }
}
