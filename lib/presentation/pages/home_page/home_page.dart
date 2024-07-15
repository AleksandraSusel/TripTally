import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/theme/app_paths.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/utils/router/app_router.dart';
import 'package:trip_tally/presentation/widgets/app_scaffold.dart';
import 'package:trip_tally/presentation/widgets/calendar_button.dart';
import 'package:trip_tally/presentation/widgets/current_trip_information.dart';
import 'package:trip_tally/presentation/widgets/custom_elevated_button.dart';
import 'package:trip_tally/presentation/widgets/custom_rectangle_button.dart';
import 'package:trip_tally/presentation/widgets/main_container.dart';
import 'package:trip_tally/presentation/widgets/person_button.dart';
import 'package:trip_tally/presentation/widgets/summary_rectangle.dart';
import 'package:trip_tally/presentation/widgets/welcome_title_widget.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      actions: const [
        CalendarButton(),
        PersonButton(),
      ],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const WelcomeTittleWidget(),
              MainContainer(
                child: Column(
                  children: [
                    const SizedBox(height: AppDimensions.d20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomRectangleButton(
                          containerHeight: AppDimensions.d90,
                          containerWidth: AppDimensions.d90,
                          icon: AppPaths.plus,
                          text: context.tr.homePage_addNewTrip,
                          onTap: () => context.router.push(NewTripRoute()),
                          iconHeight: AppDimensions.d50,
                          iconWidth: AppDimensions.d50,
                        ),
                        const SizedBox(width: AppDimensions.d40),
                        CustomRectangleButton(
                          containerHeight: AppDimensions.d90,
                          containerWidth: AppDimensions.d90,
                          icon: AppPaths.pen,
                          text: context.tr.homePage_planNewTrip,
                          onTap: () => context.router.push(const PlanNewTripRoute()),
                          iconHeight: AppDimensions.d50,
                          iconWidth: AppDimensions.d50,
                        ),
                      ],
                    ),
                    const SizedBox(height: AppDimensions.d20),
                    Column(
                      children: [
                        const CurrentTripInformation(
                          country: 'Italy',
                          countryCode: 'IT',
                        ),
                        const SizedBox(height: AppDimensions.d20),
                        const SummaryRectangle(
                          spendMoney: '3000',
                          budgetMoney: '100',
                        ),
                        const SizedBox(height: AppDimensions.d24),
                        CustomElevatedButton(
                          onPressed: () => context.router.push(const YourCurrentTripRoute()),
                          text: context.tr.homePage_goToYourTrip,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
