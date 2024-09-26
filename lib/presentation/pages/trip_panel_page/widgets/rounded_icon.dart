import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_colors.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/svg_asset.dart';

class RoundedIcon extends StatelessWidget {
  const RoundedIcon({required this.iconPath, super.key});

  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppDimensions.d40,
      width: AppDimensions.d40,
      decoration: BoxDecoration(
        color: AppColorsLight.primaryContainer,
        borderRadius: BorderRadius.circular(AppDimensions.d50),
      ),
      child: Padding(
        padding: const EdgeInsets.all(AppDimensions.d6),
        child: SvgAsset(iconPath, color: AppColorsLight.onPrimaryContainer),
      ),
    );
  }
}
