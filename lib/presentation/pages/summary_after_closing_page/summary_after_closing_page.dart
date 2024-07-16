import 'package:auto_route/annotations.dart';
import 'package:country_flags/country_flags.dart';
import 'package:flutter/cupertino.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/widgets/app_scaffold.dart';
import 'package:trip_tally/presentation/widgets/arrow_back_button.dart';
import 'package:trip_tally/presentation/widgets/calendar_button.dart';
import 'package:trip_tally/presentation/widgets/custom_elevated_button.dart';
import 'package:trip_tally/presentation/widgets/main_container.dart';
import 'package:trip_tally/presentation/widgets/package_button.dart';
import 'package:trip_tally/presentation/widgets/person_button.dart';

@RoutePage()
class SummaryAfterClosingPage extends StatelessWidget {
  const SummaryAfterClosingPage({super.key});

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
              SizedBox(
                width: AppDimensions.d200,
                height: AppDimensions.d152,
                child: Text(
                  context.tr.summaryAfterClosingPage_congrats,
                  style: context.tht.displayMedium,
                  textAlign: TextAlign.center,
                ),
              ),
              MainContainer(
                child: Column(
                  children: [
                    const SizedBox(height: AppDimensions.d50),
                    SizedBox(
                      width: AppDimensions.d300,
                      child: Text(
                        context.tr.summaryAfterClosingPage_youHaveSpentGreatMomentsIn,
                        style: context.tht.headlineSmall,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: AppDimensions.d30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(AppDimensions.d8),
                          child: Text('Italy', style: context.tht.titleLarge),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(
                              AppDimensions.d8), //TODO:  there will be a widget created in the next branch
                          child: SizedBox(
                            child: CountryFlag.fromCountryCode(
                              'IT',
                              height: AppDimensions.d26,
                              width: AppDimensions.d44,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: AppDimensions.d30),
                    SizedBox(
                      width: AppDimensions.d300,
                      child: Text(
                        context.tr.summaryAfterClosingPage_totalCostOfTheTrip,
                        style: context.tht.headlineSmall,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: AppDimensions.d30),
                    Text(r'300$', style: context.tht.titleLarge),
                    const Spacer(),
                    CustomElevatedButton(
                      onPressed: () {},
                      text: context.tr.summaryAfterClosingPage_close,
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
