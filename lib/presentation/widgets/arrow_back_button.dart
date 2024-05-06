import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trip_tally/presentation/theme/app_colors.dart';

import '../theme/app_dimensions.dart';
import '../theme/app_paths.dart';

class ArrowBackButton extends StatelessWidget {
  const ArrowBackButton({
    super.key,
    required this.onTap,
  });

  final VoidCallback onTap;

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
          onPressed: onTap,
          child: SvgPicture.asset(
            AppPaths.arrowBack,
            height: AppDimensions.d26,
            width: AppDimensions.d26,
          ),
        ),
      ),
    );
  }
}
