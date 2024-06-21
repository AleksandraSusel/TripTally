import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/widgets/app_scaffold.dart';
import 'package:trip_tally/presentation/widgets/arrow_back_button.dart';
import 'package:trip_tally/presentation/widgets/calendar_button.dart';
import 'package:trip_tally/presentation/widgets/double_header.dart';
import 'package:trip_tally/presentation/widgets/package_button.dart';
import 'package:trip_tally/presentation/widgets/person_button.dart';
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
      actions: const [
        ArrowBackButton(),
        Spacer(),
        CalendarButton(),
        PackageButton(),
        PersonButton(),
      ],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              TopContainer(
                child: DoubleHeader(
                  title: context.tr.plannedTripsPage_yourPlannedTrips,
                  subtitle: context.tr.plannedTripsPage_youHavePlanned,
                ),
              ),
              const TripTileList(),
            ],
          ),
        ),
      ),
    );
  }
}
