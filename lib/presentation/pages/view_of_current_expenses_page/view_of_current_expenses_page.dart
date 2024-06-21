import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/widgets/app_scaffold.dart';
import 'package:trip_tally/presentation/widgets/calendar_button.dart';
import 'package:trip_tally/presentation/widgets/package_button.dart';
import 'package:trip_tally/presentation/widgets/person_button.dart';
import 'package:trip_tally/presentation/widgets/planned_expenses_list.dart';
import 'package:trip_tally/presentation/widgets/resume_trip_information.dart';
import 'package:trip_tally/presentation/widgets/settings_button.dart';
import 'package:trip_tally/presentation/widgets/top_container.dart';

@RoutePage()
class ViewOfCurrentExpensesPage extends StatelessWidget {
  const ViewOfCurrentExpensesPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      actions: const [
        SettingsButton(),
        Spacer(),
        CalendarButton(),
        PackageButton(),
        PersonButton(),
      ],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TopContainer(
                child: ResumeTripInformation(
                  country: 'Germany',
                  subtitle: context.tr.viewOfCurrentExpenses_youHaveSpent,
                ),
              ),
              const SizedBox(height: AppDimensions.d40),
              SizedBox(
                height: 80,
                width: 300,
                child: Text(
                  'Your current expenses',
                  style: context.tht.displayMedium,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: AppDimensions.d10),
              const PlannedExpensesList(),
            ],
          ),
        ),
      ),
    );
  }
}
