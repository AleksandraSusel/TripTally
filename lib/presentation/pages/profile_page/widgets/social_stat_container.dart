import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/utils/money_format.dart';

class SocialStatContainer extends StatelessWidget {
  const SocialStatContainer({
    required this.title,
    required this.numberOfStat,
    required this.currency,
    super.key,
  });

  final String title;
  final String currency;
  final double numberOfStat;

  @override
  Widget build(BuildContext context) {
    final String formattedStat = MoneyFormat.formatPositiveAmountCurrency(numberOfStat, currency);

    return Padding(
      padding: const EdgeInsets.all(AppDimensions.d12),
      child: Column(
        children: [
          Text(
            formattedStat,
            style: context.tht.labelSmall?.copyWith(color: context.thc.primary),
          ),
          const SizedBox(height: AppDimensions.d4),
          Text(
            title,
            style: context.tht.displaySmall?.copyWith(color: context.thc.primary),
          ),
        ],
      ),
    );
  }
}
