import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/svg_asset.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    required this.onPressed,
    required this.svgPath,
    required this.color,
    super.key,
  });

  final VoidCallback onPressed;
  final String svgPath;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: SvgAsset(
        svgPath,
        color: color,
      ),
    );
  }
}
