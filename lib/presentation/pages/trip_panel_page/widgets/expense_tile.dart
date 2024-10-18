import 'package:flutter/material.dart';
import 'package:trip_tally/domain/entities/expenses/expense_entity.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/utils/money_format.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/expense_category_circle_avatar.dart';

class ExpenseTile extends StatelessWidget {
  const ExpenseTile({required this.expenseEntity, super.key});

  final ExpenseEntity expenseEntity;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDimensions.d10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ExpenseCategoryCircleAvatar(iconPath: expenseEntity.categoryId),
          Column(
            children: [
              Text(
                expenseEntity.name,
                style: context.tht.bodyMedium,
              ),
              Text(
                MoneyFormat.formatPositiveAmountCurrency(expenseEntity.amount, expenseEntity.currency),
                style: context.tht.bodySmall,
              ),
            ],
          ),
          const SizedBox(width: AppDimensions.d100),
          Text(expenseEntity.date, style: context.tht.bodySmall),
        ],
      ),
    );
  }
}
