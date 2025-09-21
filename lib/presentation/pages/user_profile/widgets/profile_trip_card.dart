import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/theme/app_paths.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/svg_asset.dart';

class ProfileTripCard extends StatelessWidget {
  const ProfileTripCard({
    required this.title,
    required this.tripDuration,
    required this.totalSpend,
    required this.placesVisited,
    this.assetPath,
    super.key,
  });

  final String title;
  final String? assetPath;
  final double tripDuration;
  final double totalSpend;
  final double placesVisited;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppDimensions.d10),
          child: Row(
            spacing: AppDimensions.d4,
            children: [
              const SvgAsset(AppPaths.locationPinIcon, height: AppDimensions.d20),
              Text(title, style: context.tht.labelMedium),
            ],
          ),
        ),
        Card(
          elevation: AppDimensions.d4,
          margin: const EdgeInsets.all(AppDimensions.d8),
          child: Column(
            spacing: AppDimensions.d12,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(AppDimensions.d16),
                  ),
                  color: context.thc.primary,
                ),
                clipBehavior: Clip.hardEdge,
                child: assetPath != null
                    ? Image.network(
                        assetPath!,
                        height: AppDimensions.d80,
                        fit: BoxFit.cover,
                      )
                    : Image.asset(
                        AppPaths.greece,
                        height: AppDimensions.d80,
                        fit: BoxFit.cover,
                      ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    spacing: AppDimensions.d8,
                    children: [
                      Image.asset(AppPaths.timeIcon, height: AppDimensions.d24),
                      Text(
                        '$tripDuration',
                        style: context.tht.labelSmall?.copyWith(color: context.thc.primary),
                      ),
                    ],
                  ),
                  Column(
                    spacing: AppDimensions.d8,
                    children: [
                      Image.asset(AppPaths.starIcon, height: AppDimensions.d24),
                      Text(
                        '$placesVisited',
                        style: context.tht.labelSmall?.copyWith(color: context.thc.primary),
                      ),
                    ],
                  ),
                  Column(
                    spacing: AppDimensions.d8,
                    children: [
                      Image.asset(AppPaths.spendIcon, height: AppDimensions.d24),
                      Text(
                        '$totalSpend',
                        style: context.tht.labelSmall?.copyWith(color: context.thc.primary),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: AppDimensions.d4,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
