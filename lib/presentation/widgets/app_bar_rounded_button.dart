import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../theme/app_colors.dart';
import '../theme/app_dimensions.dart';

class AppBarRoundedButton extends StatelessWidget {
  const AppBarRoundedButton({super.key, required this.svgPicture});

  final String svgPicture;

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
          onPressed: () {},
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
