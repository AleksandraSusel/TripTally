import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trip_tally/presentation/theme/app_colors.dart';

import '../theme/app_dimensions.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.svgPath,
    required this.onTap,
  });

  final String svgPath;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.linkWater,
        boxShadow: [
          BoxShadow(
            color: AppColors.poloBlue,
            offset: Offset(3, 2),
            blurRadius: AppDimensions.d10,
            spreadRadius: 4,
          ),
        ],
      ),
      child: ElevatedButton(
        style: ButtonStyle(
            padding: MaterialStateProperty.all(const EdgeInsets.all(AppDimensions.d12)),
            shape: MaterialStateProperty.all(const CircleBorder()),
            elevation: MaterialStateProperty.all(0)),
        onPressed: onTap,
        child: SvgPicture.asset(
          svgPath,
          height: AppDimensions.d26,
          width: AppDimensions.d26,
        ),
      ),
    );
  }
}
