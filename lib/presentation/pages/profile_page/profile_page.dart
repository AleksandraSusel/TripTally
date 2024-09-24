import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/pages/profile_page/widgets/row_of_trips_widget.dart';
import 'package:trip_tally/presentation/pages/profile_page/widgets/user_info_card_widget.dart';
import 'package:trip_tally/presentation/pages/profile_page/widgets/user_social_stats_widget.dart';
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
          const UserInfoCardWidget(
            userName: 'Adrian Nowak',
            userPhoto: AppPaths.man,
            isCircleButton: false,
          ),
          const UserSocialStatsWidget(
            followers: '2000',
            finishedTrips: '3',
            spentForTrips: r'10 000 $',
          ),
          const SizedBox(height: AppDimensions.d20),
          Expanded(child: RowOfTripsWidget()),
          const SizedBox(height: AppDimensions.d40),
        ],
      ),
    );
  }
}
