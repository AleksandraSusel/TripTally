import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_colors.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/svg_asset.dart';

class TripSocialIcon extends StatelessWidget {
  const TripSocialIcon({
    required this.iconPath,
    required this.number,
    super.key,
  });

  final String iconPath;
  final String number;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgAsset(iconPath),
        const SizedBox(height: AppDimensions.d6),
        Text(
          number,
          style: context.tht.displaySmall?.copyWith(color: AppColorsLight.primary),
        ),
      ],
    );
  }
}
