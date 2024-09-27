import 'package:flutter/material.dart';
import 'package:trip_tally/domain/entities/expenses/expense_entity.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/utils/enums/transport_type.dart';
import 'package:trip_tally/presentation/utils/money_format.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/svg_asset.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem({
    required this.onDelete,
    required this.expense,
    super.key,
  });

  final VoidCallback onDelete;
  final ExpenseEntity expense;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: context.thc.primary,
            width: 0.4,
          ),
        ),
        color: context.thc.surface,
      ),
      padding: const EdgeInsets.all(AppDimensions.d16),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: context.thc.primaryContainer,
            child: SvgAsset(
              TransportType.flight.icon,
              color: context.thc.shadow,
            ),
          ),
          const SizedBox(width: AppDimensions.d8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                expense.name,
                style: context.tht.labelSmall,
              ),
              Text(
                MoneyFormat.formatPositiveAmountCurrency(
                  double.parse(expense.price.amount),
                  expense.price.currency,
                ),
                style: context.tht.labelSmall,
              ),
            ],
          ),
          const Spacer(),
          IconButton(
            onPressed: onDelete,
            icon: Icon(
              Icons.delete_outlined,
              size: AppDimensions.d24,
              color: context.thc.error,
            ),
          ),
        ],
      ),
    );
  }
}
