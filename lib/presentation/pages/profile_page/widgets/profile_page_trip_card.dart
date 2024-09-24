import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/pages/profile_page/widgets/trip_social_stats.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/theme/app_paths.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/svg_asset.dart';

class ProfilePageTripCard extends StatelessWidget {
  const ProfilePageTripCard({
    required this.localization,
    required this.imgPath,
    super.key,
  });

  final String localization;
  final String imgPath;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: AppDimensions.d20),
          child: Row(
            children: [
              const SvgAsset(AppPaths.localization),
              Text(
                localization,
                style: context.tht.labelSmall,
              ),
            ],
          ),
        ),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppDimensions.d12),
          ),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(AppDimensions.d12),
                ),
                child: Image.asset(
                  imgPath,
                  width: double.infinity,
                  height: AppDimensions.d80,
                  fit: BoxFit.cover,
                ),
              ),
              const TripSocialStats(),
            ],
          ),
        ),
      ],
    );
  }
}
