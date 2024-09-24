import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/pages/profile_page/widgets/trip_social_icon.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/theme/app_paths.dart';

class TripSocialStats extends StatelessWidget {
  const TripSocialStats({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        left: AppDimensions.d18,
        right: AppDimensions.d18,
        bottom: AppDimensions.d8,
        top: AppDimensions.d8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TripSocialIcon(
            iconPath: AppPaths.heart,
            number: '2k',
          ),
          TripSocialIcon(
            iconPath: AppPaths.eyeM3,
            number: '99',
          ),
          TripSocialIcon(
            iconPath: AppPaths.bagOfMoney,
            number: '290',
          ),
        ],
      ),
    );
  }
}
