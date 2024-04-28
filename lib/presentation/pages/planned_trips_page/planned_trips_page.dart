import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/widgets/trip_tile_list.dart';

import '../../theme/app_paths.dart';
import '../../widgets/app_scaffold.dart';
import '../../widgets/circle_svg_button.dart';
import '../../widgets/resume_trip_information.dart';
import '../../widgets/top_container.dart';

@RoutePage()
class PlannedTripsPage extends StatelessWidget {
  const PlannedTripsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      actions: [
        CustomSvgButton(
          svgPath: AppPaths.arrowBack,
          onTap: () {},
        ),
        const Spacer(),
        CustomSvgButton(
          svgPath: AppPaths.callendar,
          onTap: () {},
        ),
        CustomSvgButton(
          svgPath: AppPaths.package,
          onTap: () {},
        ),
        CustomSvgButton(
          svgPath: AppPaths.person,
          onTap: () {},
        ),
      ],
      body: const SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TopContainer(
                child: ResumeTripInformation(
                  country: 'Germany',
                  data: '3.01.24-10.01.24',
                ),
              ),
              TripTileList(),
            ],
          ),
        ),
      ),
    );
  }
}
