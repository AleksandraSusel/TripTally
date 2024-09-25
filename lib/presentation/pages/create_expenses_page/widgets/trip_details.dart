import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/pages/create_expenses_page/widgets/trip_info.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/utils/enums/transport_type.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/money_container.dart';

class TripDetails extends StatelessWidget {
  const TripDetails({
    required this.destination,
    required this.date,
    required this.transportType,
    required this.maxAmount,
    required this.plannedAmount,
    required this.currency,
    super.key,
  });

  final String destination;
  final String date;
  final TransportType transportType;
  final double maxAmount;
  final double plannedAmount;
  final String currency;

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
            destination: destination,
            date: date,
            transportType: transportType,
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
                maxAmount: maxAmount,
                plannedAmount: plannedAmount,
                currency: currency,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
