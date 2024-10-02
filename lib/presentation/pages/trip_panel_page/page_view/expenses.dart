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
            withActionButtons: false,
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
          Expanded(
            flex: 3,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: AppDimensions.d16),
              itemCount: expenseTile.length,
              itemBuilder: (context, index) {
                return expenseTile[index];
              },
              separatorBuilder: (context, index) {
                return const Divider();
              },
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
