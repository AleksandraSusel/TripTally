import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trip_tally/presentation/theme/app_colors.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';

class CustomSvgButton extends StatelessWidget {
  const CustomSvgButton({
    required this.svgPath,
    required this.onTap,
    required this.height,
    required this.width,
    super.key,
  });

  final String svgPath;
  final VoidCallback onTap;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDimensions.d5),
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
          onPressed: onTap,
          child: SvgPicture.asset(
            svgPath,
            height: height,
            width: width,
          ),
        ),
      ),
    );
  }
}
