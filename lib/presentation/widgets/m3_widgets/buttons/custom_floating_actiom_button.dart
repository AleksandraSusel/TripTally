import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/svg_asset.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    required this.svgPath,
    required this.onPressed,
    super.key,
  });

  final String svgPath;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: context.thc.tertiaryContainer,
      onPressed: onPressed,
      child: SvgAsset(svgPath),
    );
  }
}
