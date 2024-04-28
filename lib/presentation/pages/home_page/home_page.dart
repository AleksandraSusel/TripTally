import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/widgets/main_container.dart';
import 'package:trip_tally/presentation/widgets/welcome_title_widget.dart';

import '../../theme/app_dimensions.dart';
import '../../theme/app_paths.dart';
import '../../utils/router/app_router.dart';
import '../../widgets/app_scaffold.dart';
import '../../widgets/circle_svg_button.dart';
import '../../widgets/current_trip_information.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_rectangle_button.dart';
import '../../widgets/summary_rectangle.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const WelcomeTittleWidget(),
              MainContainer(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(height: AppDimensions.d20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomRectangleButton(
                          icon: AppPaths.plus,
                          text: context.tr.homePage_addNewTrip,
                          onTap: () {},
                          height: AppDimensions.d50,
                          width: AppDimensions.d50,
                        ),
                        const SizedBox(width: AppDimensions.d40),
                        CustomRectangleButton(
                          icon: AppPaths.pen,
                          text: context.tr.homePage_planNewTrip,
                          onTap: () => context.router.push(const NewTripRoute()),
                          height: AppDimensions.d50,
                          width: AppDimensions.d50,
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
                          onPressed: () => context.router.push(const NewTripRoute()),
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
