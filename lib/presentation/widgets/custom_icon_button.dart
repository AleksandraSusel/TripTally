import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trip_tally/presentation/theme/app_colors.dart';

import '../theme/app_dimensions.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.icon,
    required this.onTap,
  });

  final String icon;
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
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            padding: MaterialStateProperty.all(const EdgeInsets.all(10)),
            shape: MaterialStateProperty.all(const CircleBorder()),
            backgroundColor: const MaterialStatePropertyAll<Color>(Colors.transparent),
            surfaceTintColor: const MaterialStatePropertyAll<Color>(Colors.transparent),
            overlayColor: const MaterialStatePropertyAll<Color>(AppColors.wePeep),
            elevation: MaterialStateProperty.all(0)),
        onPressed: onTap,
        child: SvgPicture.asset(
          icon,
          height: 30,
          width: 30,
        ),
      ),
    );
  }
}
