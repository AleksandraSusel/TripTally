import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/theme/app_paths.dart';
import 'package:trip_tally/presentation/utils/enums/transport_type.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/cards/outlined_trip_card.dart';

class Expenses extends StatelessWidget {
  const Expenses({
    required this.expenseTile,
    super.key,
  });

  final List<Widget> expenseTile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const OutlinedTripCard(
            areThereBottomAction: false,
            country: 'Greece',
            dateFrom: '10-02-2023',
            dateTo: '10-02-2023',
            transportType: TransportType.flight,
            totalExpensesAmount: 1300,
            totalExpensesCurrency: r'$',
            countryCode: 'PL',
            imagePath: AppPaths.greece,
          ),
          const SizedBox(height: AppDimensions.d10),
          Card(
            margin: const EdgeInsets.symmetric(horizontal: AppDimensions.d16),
            elevation: AppDimensions.zero,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(AppDimensions.d12),
                  topLeft: Radius.circular(AppDimensions.d12),
                ),
              ),
              child: Column(
                children: expenseTile
                    .map(
                      (expense) => Column(
                        children: [
                          expense,
                          const Divider(),
                        ],
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
