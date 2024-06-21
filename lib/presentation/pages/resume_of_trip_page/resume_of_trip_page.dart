import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/widgets/app_scaffold.dart';
import 'package:trip_tally/presentation/widgets/calendar_button.dart';
import 'package:trip_tally/presentation/widgets/home_button.dart';
import 'package:trip_tally/presentation/widgets/package_button.dart';
import 'package:trip_tally/presentation/widgets/person_button.dart';
import 'package:trip_tally/presentation/widgets/planned_expenses_list.dart';
import 'package:trip_tally/presentation/widgets/resume_trip_information.dart';
import 'package:trip_tally/presentation/widgets/top_container.dart';

@RoutePage()
class ResumeOfTripPage extends StatelessWidget {
  const ResumeOfTripPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      actions: const [
        HomeButton(),
        Spacer(),
        CalendarButton(),
        PackageButton(),
        PersonButton(),
      ],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TopContainer(
                child: ResumeTripInformation(
                  country: 'Germany',
                  subtitle: '3.01.24-10.01.24',
                ),
              ),
              const SizedBox(height: AppDimensions.d40),
              Padding(
                padding: const EdgeInsets.only(left: AppDimensions.d18),
                child: Text(context.tr.resumeOfTripPage_YouHavePlanned),
              ),
              const SizedBox(height: AppDimensions.d40),
              const PlannedExpensesList(),
            ],
          ),
        ),
      ),
    );
  }
}
