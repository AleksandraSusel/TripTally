import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_paths.dart';
import 'package:trip_tally/presentation/widgets/app_scaffold.dart';
import 'package:trip_tally/presentation/widgets/circle_svg_button.dart';
import 'package:trip_tally/presentation/widgets/resume_trip_information.dart';
import 'package:trip_tally/presentation/widgets/top_container.dart';
import 'package:trip_tally/presentation/widgets/trip_tile_list.dart';

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
          svgPath: AppPaths.calendar,
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
            children: [
              TopContainer(
                child: ResumeTripInformation(
                  country: 'Germany',
                  subtitle: '3.01.24-10.01.24',
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
