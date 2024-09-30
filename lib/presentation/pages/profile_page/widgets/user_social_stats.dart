import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/pages/profile_page/widgets/social_stat_container.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';

class UserSocialStats extends StatelessWidget {
  const UserSocialStats({
    required this.followers,
    required this.finishedTrips,
    required this.spentForTrips,
    super.key,
    this.currency,
  });

  final double followers;
  final double finishedTrips;
  final double spentForTrips;
  final String? currency;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(AppDimensions.d14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppDimensions.d20),
        border: Border.all(
          color: context.thc.primary,
          width: 0.5,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SocialStatContainer(
            title: context.tr.profilePage_followers,
            numberOfStat: followers,
          ),
          SocialStatContainer(
            title: context.tr.profilePage_finishedTrips,
            numberOfStat: finishedTrips,
          ),
          SocialStatContainer(
            currency: currency,
            title: context.tr.profilePage_spentOnTrips,
            numberOfStat: spentForTrips,
          ),
        ],
      ),
    );
  }
}
