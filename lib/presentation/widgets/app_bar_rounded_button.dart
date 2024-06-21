import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trip_tally/presentation/theme/app_colors.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';

class AppBarRoundedButton extends StatelessWidget {
  const AppBarRoundedButton({
    required this.svgPicture,
    required this.onPressed,
    super.key,
  });

  final String svgPicture;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDimensions.d8),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: AppColors.poloBlue,
              offset: Offset(3, 2),
              blurRadius: AppDimensions.d10,
              spreadRadius: 4,
            ),
          ],
        ),
        child: FloatingActionButton(
          onPressed: onPressed,
          child: SvgPicture.asset(
            svgPicture,
            height: AppDimensions.d26,
            width: AppDimensions.d26,
          ),
        ),
      ),
    );
  }
}
