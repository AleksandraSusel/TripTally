import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/theme/app_paths.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/utils/enums/transport_type.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/buttons/custom_floating_actiom_button.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/cards/elevated_trip_card.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/custom_alert_dialog.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/navigation_app_bar.dart';

@RoutePage()
class PlannedTripsM3Page extends StatelessWidget {
  const PlannedTripsM3Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: CustomFloatingActionButton(
        onPressed: () {},
        svgPath: AppPaths.editIcon,
      ),
      appBar: NavigationAppBar(title: context.tr.plannedTripsM3Page_yourTrips),
      body: SafeArea(
        child: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(AppDimensions.d10),
            child: ElevatedTripCard(
              country: 'Greece',
              dateFrom: '22-03-2023',
              dateTo: '25-03-2023',
              transportType: TransportType.flight,
              totalExpensesAmount: 2000,
              totalExpensesCurrency: r'$',
              imagePath: AppPaths.greece,
              countryCode: 'GR',
              expectedBudgetAmount: 3000,
              expectedBudgetCurrency: r'$',
              onDeletePressed: () => showDialog<void>(
                context: context,
                builder: (ctx) => CustomAlertDialog(
                  abortButtonText: context.tr.generic_cancel,
                  title: context.tr.plannedTripsM3Page_deleteTrip,
                  info: context.tr.plannedTripsM3Page_confirmationDeleteTrip,
                  actionButtonText: context.tr.generic_confirm,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
