import 'package:flutter/material.dart';

import '../theme/app_dimensions.dart';
import '../theme/theme_manager.dart';

class UnderlinedTextField extends StatelessWidget {
  const UnderlinedTextField({super.key, required this.svgPath, required this.hintText});

  final String svgPath;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDimensions.d26),
      child: TextField(
        textAlign: TextAlign.center,
        decoration: ThemeManager().underlinedTextField(
          hintText: hintText,
          suffixIcon: svgPath,
        ),
      ),
    );
  }
}
