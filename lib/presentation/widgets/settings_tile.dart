import 'package:flutter/cupertino.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';

import 'circle_svg_button.dart';

class SettingsTale extends StatelessWidget {
  const SettingsTale({
    super.key,
    required this.svgPath,
    required this.onTap,
    required this.text,
  });

  final String svgPath;
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: AppDimensions.d20,
        right: AppDimensions.d20,
        top: AppDimensions.d10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text),
          CustomSvgButton(
            svgPath: svgPath,
            onTap: onTap,
          ),
        ],
      ),
    );
  }
}
