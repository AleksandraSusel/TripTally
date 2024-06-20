import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';

import '../theme/app_dimensions.dart';
import 'money_rich_text.dart';

class PlannedExpense extends StatelessWidget {
  const PlannedExpense({
    super.key,
    required this.expense,
    required this.money,
    required this.currency,
    required this.icon,
  });

  final String expense;
  final String money;
  final String currency;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(AppDimensions.d8),
          child: SvgPicture.asset(icon),
        ),
        const SizedBox(width: AppDimensions.d40),
        Text(expense, style: context.tht.labelSmall),
        const SizedBox(width: AppDimensions.d40),
        MoneyRichText(money: money, currency: currency)
      ],
    );
  }
}
