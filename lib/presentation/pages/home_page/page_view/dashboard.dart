import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/theme/app_paths.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/utils/enums/transport_type.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/cards/elevated_info_card.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/cards/outlined_trip_card.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: AppDimensions.d80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: AppDimensions.d16,
            ),
            Padding(
              padding: const EdgeInsets.all(AppDimensions.d8) + const EdgeInsets.only(left: AppDimensions.d8),
              child: Text(
                context.tr.homePage_youAreCurrentlyOnATrip,
                style: context.tht.labelSmall,
              ),
            ),
            const OutlinedTripCard(
              country: 'Italy',
              dateFrom: '10-02-2023',
              dateTo: '10-02-2023',
              transportType: TransportType.flight,
              totalExpensesAmount: 1300,
              totalExpensesCurrency: r'$',
              countryCode: 'PL',
              imagePath: AppPaths.italy,
            ),
            const Divider(thickness: 1),
            Padding(
              padding: const EdgeInsets.only(
                top: AppDimensions.d20,
                left: AppDimensions.d16,
                bottom: AppDimensions.d8,
              ),
              child: Text(context.tr.homePage_yourPlannedTrips, style: context.tht.labelSmall),
            ),
            SizedBox(
              height: AppDimensions.d90,
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: AppDimensions.d8),
                scrollDirection: Axis.horizontal,
                itemCount: 2,
                itemBuilder: (BuildContext context, int index) => const ElevatedInfoCard(
                  country: 'Greece',
                  dateFrom: '2024-30-07',
                  dateTo: '2024-30-08',
                  transportType: TransportType.flight,
                  totalExpensesAmount: 10000,
                  totalExpensesCurrency: '€',
                  countryCode: 'GR',
                ),
              ),
            ),
            SizedBox(
              height: AppDimensions.d90,
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: AppDimensions.d8),
                scrollDirection: Axis.horizontal,
                itemCount: 2,
                itemBuilder: (BuildContext context, int index) => const ElevatedInfoCard(
                  country: 'Greece',
                  dateFrom: '2024-30-07',
                  dateTo: '2024-30-08',
                  transportType: TransportType.flight,
                  totalExpensesAmount: 10000,
                  totalExpensesCurrency: '€',
                  countryCode: 'GR',
                ),
              ),
            ),
            //
          ],
        ),
      ),
    );
  }
}
