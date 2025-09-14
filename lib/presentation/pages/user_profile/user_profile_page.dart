import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/pages/user_profile/widgets/profile_stats_element.dart';
import 'package:trip_tally/presentation/pages/user_profile/widgets/profile_trip_card.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/theme/app_paths.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/navigation_app_bar.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/profile_avatar.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/svg_asset.dart';

@RoutePage()
class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NavigationAppBar(
        title: context.tr.userProfilePage_yourProfile,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const SvgAsset(AppPaths.settingsIcon),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          spacing: AppDimensions.d16,
          children: [
            const SizedBox(
              height: AppDimensions.d16,
            ),
            const Center(
              child: ProfileAvatar(
                size: 1.75,
              ),
            ),
            Text(
              'Mordziaty Zbigniew'.toUpperCase(),
              style: context.tht.displaySmall,
            ),
            Container(
              margin: const EdgeInsets.all(AppDimensions.d8),
              padding: const EdgeInsets.all(AppDimensions.d12),
              decoration: BoxDecoration(
                border: Border.all(
                  color: context.thc.primary,
                ),
                borderRadius: BorderRadius.circular(AppDimensions.d16),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ProfileStatsElement(
                    title: context.tr.userProfilePage_followers,
                    value: '2340',
                  ),
                  ProfileStatsElement(
                    title: context.tr.userProfilePage_finishedTrips,
                    value: '9',
                  ),
                  ProfileStatsElement(
                    title: context.tr.userProfilePage_tripsSpend,
                    value: r'2340 $',
                  ),
                ],
              ),
            ),
            const Divider(
              height: 0,
              thickness: AppDimensions.d1,
            ),
            Flexible(
              child: GridView.builder(
                padding: const EdgeInsets.all(AppDimensions.d8),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.9,
                  crossAxisSpacing: AppDimensions.d4,
                ),
                itemBuilder: (_, index) => const ProfileTripCard(
                  title: 'Greece',
                  tripDuration: 7,
                  placesVisited: 5,
                  totalSpend: 2340,
                ),
                itemCount: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
