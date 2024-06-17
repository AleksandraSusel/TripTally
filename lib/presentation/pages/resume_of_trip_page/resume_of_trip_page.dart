import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/widgets/app_scaffold.dart';

import '../../theme/app_paths.dart';
import '../../widgets/circle_svg_button.dart';
import '../../widgets/planned_expenses_list.dart';
import '../../widgets/resume_trip_information.dart';
import '../../widgets/top_container.dart';

@RoutePage()
class ResumeOfTripPage extends StatelessWidget {
  const ResumeOfTripPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      actions: [
        CustomSvgButton(
          svgPath: AppPaths.settings,
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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TopContainer(
                child: ResumeTripInformation(
                  country: 'Germany',
                  data: '3.01.24-10.01.24',
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
