import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';

import '../../injectable/injectable.dart';
import '../theme/theme_manager.dart';

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
          decoration: getIt<ThemeManager>().sideShadow,
          child: ElevatedButton(
            style: getIt<ThemeManager>().rectangleButtonStyle,
            onPressed: () {},
            child: SvgPicture.asset(
              icon,
              height: AppDimensions.d50,
              width: AppDimensions.d50,
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
