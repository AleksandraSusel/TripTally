import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_colors.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    super.key,
    required this.onPressed,
    required this.text,
  });

  final VoidCallback onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppDimensions.d300,
      child: GestureDetector(
        child: FloatingActionButton(
          splashColor: AppColors.linkWater,
          onPressed: onPressed,
          child: Text(
            text,
            style: context.tht.labelMedium,
          ),
        ),
      ),
    );
  }
}
