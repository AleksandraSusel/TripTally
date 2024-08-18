import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/theme/theme_manager.dart';

class IconButtonTextField extends StatelessWidget {
  const IconButtonTextField({
    required this.svgPath,
    required this.hintText,
    required this.onPressed,
    super.key,
    this.controller,
  });

  final String svgPath;
  final String hintText;
  final VoidCallback onPressed;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDimensions.d26),
      child: TextField(
        controller: controller,
        textAlign: TextAlign.center,
        decoration: ThemeManager().iconButtonTextField(
          hintText: hintText,
          suffixIcon: svgPath,
          onPressed: onPressed,
        ),
      ),
    );
  }
}
