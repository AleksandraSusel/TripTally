import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/theme/theme_manager.dart';

class SuffixIconTextField extends StatelessWidget {
  const SuffixIconTextField({
    required this.svgPath,
    required this.hintText,
    super.key,
    this.controller,
  });

  final String svgPath;
  final String hintText;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDimensions.d26),
      child: TextField(
        controller: controller,
        textAlign: TextAlign.center,
        decoration: ThemeManager().suffixIconTextField(
          hintText: hintText,
          suffixIcon: svgPath,
        ),
      ),
    );
  }
}
