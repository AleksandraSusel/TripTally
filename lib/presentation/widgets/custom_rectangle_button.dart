import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';

import '../theme/app_colors.dart';

class CustomRectangleButton extends StatelessWidget {
  const CustomRectangleButton({
    super.key,
    required this.icon,
    this.text,
    required this.onTap,
  });

  final String icon;
  final VoidCallback onTap;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: AppDimensions.d90,
          height: AppDimensions.d90,
          decoration: BoxDecoration(
            color: AppColors.linkWater,
            borderRadius: BorderRadius.circular(AppDimensions.d20),
            boxShadow: const [
              BoxShadow(
                color: AppColors.osloGray,
                offset: Offset(3, 2),
                blurRadius: AppDimensions.d5,
                spreadRadius: 1,
              ),
              BoxShadow(
                color: AppColors.porcelain,
                offset: Offset(-1, -1),
                blurRadius: 6,
                spreadRadius: 4,
              ),
            ],
          ),
          child: ElevatedButton(
            style: ButtonStyle(
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              shape: MaterialStateProperty.all<OutlinedBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              elevation: MaterialStateProperty.all(0),
              backgroundColor: const MaterialStatePropertyAll<Color>(Colors.transparent),
              surfaceTintColor: const MaterialStatePropertyAll<Color>(Colors.transparent),
              overlayColor: const MaterialStatePropertyAll<Color>(AppColors.wePeep),
            ),
            onPressed: () {},
            child: SvgPicture.asset(
              icon,
              height: 50,
              width: 50,
            ),
          ),
        ),
        if (text != null)
          SizedBox(
              child: Padding(
            padding: const EdgeInsets.all(AppDimensions.d8),
            child: Text(
              text!,
              style: context.tht.labelSmall,
            ),
          )),
      ],
    );
  }
}
