import 'package:flutter/material.dart';

import '../theme/app_dimensions.dart';
import '../theme/theme_manager.dart';

class IconButtonTextField extends StatelessWidget {
  const IconButtonTextField({
    super.key,
    required this.svgPath,
    required this.hintText,
    required this.onPressed,
  });

  final String svgPath;
  final String hintText;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDimensions.d26),
      child: TextField(
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
