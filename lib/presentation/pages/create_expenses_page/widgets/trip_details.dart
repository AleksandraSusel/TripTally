import 'package:flutter/material.dart';
import 'package:trip_tally/domain/entities/trips/trip_entity.dart';
import 'package:trip_tally/presentation/pages/create_expenses_page/widgets/trip_info.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/utils/money_format.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/money_container.dart';

class TripDetails extends StatelessWidget {
  const TripDetails({
    required this.expensesAmount,
    required this.trip,
    super.key,
  });

  final TripEntity trip;

  final double expensesAmount;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppDimensions.d16),
      decoration: BoxDecoration(
        color: context.thc.surface,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(AppDimensions.d16),
        ),
        border: Border(
          bottom: BorderSide(color: context.thc.primary),
        ),
      ),
      child: Row(
        children: [
          TripInfo(
            cityName: trip.location.cityName,
            countryCode: trip.location.countryCode,
            transportType: trip.transportType,
            dateFrom: trip.dateFrom,
            dateTo: trip.dateTo,
          ),
          const Spacer(),
          Column(
            children: [
              Text(
                context.tr.createExpensesPage_budget,
                style: context.tht.labelSmall,
              ),
              const SizedBox(height: AppDimensions.d16),
              BalanceMoneyContainer(
                maxAmount: double.parse(trip.plannedCost.amount),
                insertedAmount: expensesAmount,
                currency: MoneyFormat.formatCurrencyToSymbol(trip.plannedCost.currency),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
