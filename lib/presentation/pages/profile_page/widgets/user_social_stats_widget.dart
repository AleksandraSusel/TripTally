import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_colors.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';

class UserSocialStatsWidget extends StatelessWidget {
  const UserSocialStatsWidget({
    required this.followers,
    required this.finishedTrips,
    required this.spentForTrips,
    super.key,
  });

  final String followers;
  final String finishedTrips;
  final String spentForTrips;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDimensions.d8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: AppColorsLight.primary,
            width: 0.5,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(AppDimensions.d16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    followers,
                    style: context.tht.labelSmall?.copyWith(color: AppColorsLight.primary),
                  ),
                  const SizedBox(height: AppDimensions.d4),
                  Text(
                    context.tr.profilePage_followers,
                    style: context.tht.displaySmall?.copyWith(color: AppColorsLight.primary),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    finishedTrips,
                    style: context.tht.labelSmall?.copyWith(color: AppColorsLight.primary),
                  ),
                  const SizedBox(height: AppDimensions.d4),
                  Text(
                    context.tr.profilePage_finishedTrips,
                    style: context.tht.displaySmall?.copyWith(color: AppColorsLight.primary),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    spentForTrips,
                    style: context.tht.labelSmall?.copyWith(color: AppColorsLight.primary),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    context.tr.profilePage_spentOnTrips,
                    style: context.tht.displaySmall?.copyWith(color: AppColorsLight.primary),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
