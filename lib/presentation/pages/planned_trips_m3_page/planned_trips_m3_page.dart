import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/theme/app_paths.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/utils/enums/transport_type.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/cards/elevated_trip_card.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/custom_alert_dialog.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/navigation_app_bar.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/svg_asset.dart';

@RoutePage()
class PlannedTripsM3Page extends StatelessWidget {
  const PlannedTripsM3Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: context.thc.tertiaryContainer,
        onPressed: () => showDialog<void>(
          context: context,
          builder: (context) => CustomAlertDialog(
            title: context.tr.plannedTripsM3Page_deleteTrip,
            info: context.tr.plannedTripsM3Page_confirmationDeleteTrip,
            isConfirmation: true,
            actionButtonText: context.tr.generic_confirm,
          ),
        ),
        child: const SvgAsset(AppPaths.editIcon),
      ),
      appBar: NavigationAppBar(title: context.tr.plannedTripsM3Page_yourTrips),
      body: SafeArea(
        child: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index) => const Padding(
            padding: EdgeInsets.all(AppDimensions.d10),
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
            ),
          ),
        ),
      ),
    );
  }
}
