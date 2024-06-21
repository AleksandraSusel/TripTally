import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/widgets/app_scaffold.dart';
import 'package:trip_tally/presentation/widgets/arrow_back_button.dart';
import 'package:trip_tally/presentation/widgets/calendar_button.dart';
import 'package:trip_tally/presentation/widgets/country_with_flag.dart';
import 'package:trip_tally/presentation/widgets/custom_elevated_button.dart';
import 'package:trip_tally/presentation/widgets/main_container.dart';
import 'package:trip_tally/presentation/widgets/ordinary_title_widget.dart';
import 'package:trip_tally/presentation/widgets/package_button.dart';
import 'package:trip_tally/presentation/widgets/person_button.dart';

@RoutePage()
class RemoveCurrentTripPage extends StatelessWidget {
  const RemoveCurrentTripPage({super.key});

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
                width: AppDimensions.d300,
                height: AppDimensions.d180,
                child: OrdinaryTitleWidget(
                  titleText: context.tr.removeCurrentTripPage_removeYourTrip,
                ),
              ),
              MainContainer(
                child: Column(
                  children: [
                    const SizedBox(height: AppDimensions.d100),
                    Text(
                      context.tr.removeCurrentTripPage_doYouWantToRemoveThisTrip,
                      style: context.tht.headlineSmall,
                    ),
                    const SizedBox(height: AppDimensions.d100),
                    const SizedBox(
                      width: AppDimensions.d200,
                      child: CountryWithFlag(
                        country: 'Italy',
                        countryCode: 'IT',
                      ),
                    ),
                    const Spacer(),
                    CustomElevatedButton(
                      onPressed: () {},
                      text: context.tr.removeCurrentTripPage_deleteTheTrip,
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
