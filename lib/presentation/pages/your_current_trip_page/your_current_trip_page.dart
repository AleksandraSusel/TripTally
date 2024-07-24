import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/theme/app_paths.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/utils/router/app_router.dart';
import 'package:trip_tally/presentation/widgets/app_scaffold.dart';
import 'package:trip_tally/presentation/widgets/arrow_back_button.dart';
import 'package:trip_tally/presentation/widgets/calendar_button.dart';
import 'package:trip_tally/presentation/widgets/circle_svg_button.dart';
import 'package:trip_tally/presentation/widgets/current_trip_information.dart';
import 'package:trip_tally/presentation/widgets/custom_rectangle_button.dart';
import 'package:trip_tally/presentation/widgets/hi_traveller_title_widget.dart';
import 'package:trip_tally/presentation/widgets/main_container.dart';
import 'package:trip_tally/presentation/widgets/package_button.dart';
import 'package:trip_tally/presentation/widgets/person_button.dart';
import 'package:trip_tally/presentation/widgets/summary_rectangle.dart';

@RoutePage()
class YourCurrentTripPage extends StatelessWidget {
  const YourCurrentTripPage({super.key});

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
              HiTravellerTitleWidget(text: context.tr.yourCurrentTripPage_yourCurrentTrip),
              MainContainer(
                child: Column(
                  children: [
                    const SizedBox(height: AppDimensions.d20),
                    const CurrentTripInformation(
                      country: 'Italy',
                      countryCode: 'IT',
                    ),
                    const SizedBox(height: AppDimensions.d20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomRectangleButton(
                          containerHeight: AppDimensions.d80,
                          containerWidth: AppDimensions.d80,
                          icon: AppPaths.close,
                          text: context.tr.yourCurrentTripPage_closeTheTrip,
                          onTap: () => context.router.push(const SummaryAfterClosingRoute()),
                          iconHeight: AppDimensions.d50,
                          iconWidth: AppDimensions.d50,
                        ),
                        CustomRectangleButton(
                          containerHeight: AppDimensions.d80,
                          containerWidth: AppDimensions.d80,
                          icon: AppPaths.plus,
                          text: context.tr.yourCurrentTripPage_addExpense,
                          onTap: () => context.router.push(CreateExpensesRoute()),
                          iconHeight: AppDimensions.d50,
                          iconWidth: AppDimensions.d50,
                        ),
                        CustomRectangleButton(
                          containerHeight: AppDimensions.d80,
                          containerWidth: AppDimensions.d80,
                          icon: AppPaths.pen,
                          text: context.tr.yourCurrentTripPage_editTheTrip,
                          onTap: () => context.router.push(const EditCurrentTripRoute()),
                          iconHeight: AppDimensions.d50,
                          iconWidth: AppDimensions.d50,
                        ),
                      ],
                    ),
                    const SizedBox(height: AppDimensions.d50),
                    Stack(
                      children: [
                        const Positioned(
                          child: SummaryRectangle(
                            spendMoney: '3000',
                            budgetMoney: '100',
                          ),
                        ),
                        Positioned(
                          right: 1,
                          child: CustomSvgButton(
                            svgPath: AppPaths.eye,
                            onTap: () => context.router.push(const ViewOfCurrentExpensesRoute()),
                            height: AppDimensions.d22,
                            width: AppDimensions.d22,
                          ),
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
