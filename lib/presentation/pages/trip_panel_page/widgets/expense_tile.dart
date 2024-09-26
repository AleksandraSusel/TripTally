import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/pages/trip_panel_page/widgets/rounded_icon.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';

class ExpenseTile extends StatelessWidget {
  const ExpenseTile({
    required this.expenseName,
    required this.date,
    required this.currency,
    required this.amount,
    required this.iconPath,
    super.key,
  });

  final String expenseName;
  final String date;
  final String currency;
  final String iconPath;
  final double amount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDimensions.d10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RoundedIcon(iconPath: iconPath),
          Column(
            children: [
              Text(
                expenseName,
                style: context.tht.bodyMedium,
              ),
              Row(
                children: [
                  Text(amount.toString(), style: context.tht.bodySmall),
                  Text(currency, style: context.tht.bodySmall),
                ],
              ),
            ],
          ),
          const SizedBox(width: AppDimensions.d100),
          Text(date, style: context.tht.bodySmall),
        ],
      ),
    );
  }
}
