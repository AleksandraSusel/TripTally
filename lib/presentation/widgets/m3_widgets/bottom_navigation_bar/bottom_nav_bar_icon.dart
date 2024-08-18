import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:trip_tally/presentation/theme/app_colors.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/svg_asset.dart';

class BottomNavBarIcon extends StatelessWidget {
  const BottomNavBarIcon({
    required this.asset,
    required this.isActive,
    super.key,
  });

  final String asset;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: 600.ms,
      curve: Curves.easeInOut,
      padding: const EdgeInsets.symmetric(vertical: AppDimensions.d4),
      width: AppDimensions.d68,
      decoration: BoxDecoration(
        color: isActive ? context.thc.secondaryContainer : AppColorsLight.surface3,
        borderRadius: BorderRadius.circular(AppDimensions.d16),
      ),
      child: SvgAsset(
        asset,
        height: AppDimensions.d24,
        color: isActive ? null : context.thc.outline,
      ),
    ).animate().fadeIn();
  }
}
