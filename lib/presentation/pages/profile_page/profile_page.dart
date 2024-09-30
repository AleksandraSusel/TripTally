import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/pages/profile_page/widgets/trips_grid_view.dart';
import 'package:trip_tally/presentation/pages/profile_page/widgets/user_info_card.dart';
import 'package:trip_tally/presentation/pages/profile_page/widgets/user_social_stats.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/theme/app_paths.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/navigation_app_bar.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/svg_asset.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NavigationAppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.all(AppDimensions.d8),
            child: SvgAsset(
              AppPaths.carbonSettings,
              height: AppDimensions.d30,
              width: AppDimensions.d30,
            ),
          ),
        ],
        title: context.tr.profilePage_yourPage,
      ),
      body: Column(
        children: [
          const SizedBox(height: AppDimensions.d24),
          const UserInfoCard(
            username: 'Adrian Nowak',
            userPhoto: AppPaths.man,
          ),
          const UserSocialStats(
            currency: r'$',
            followers: 20000,
            finishedTrips: 3,
            spentForTrips: 100000,
          ),
          const SizedBox(height: AppDimensions.d20),
          Expanded(child: TripsGridView()),
          const SizedBox(height: AppDimensions.d30),
        ],
      ),
    );
  }
}
