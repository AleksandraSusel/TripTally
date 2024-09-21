import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/theme/theme_manager.dart';
import 'package:trip_tally/presentation/utils/date_format.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/utils/enums/transport_type.dart';
import 'package:trip_tally/presentation/utils/money_format.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/outlined_circle_country_flag.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/transport_circle.dart';

class ElevatedInfoCard extends StatelessWidget {
  const ElevatedInfoCard({
    required this.country,
    required this.dateFrom,
    required this.dateTo,
    required this.transportType,
    required this.totalExpensesAmount,
    required this.totalExpensesCurrency,
    required this.countryCode,
    super.key,
  });

  final String country;
  final String dateFrom;
  final String dateTo;
  final TransportType transportType;
  final double totalExpensesAmount;
  final String totalExpensesCurrency;
  final String countryCode;

  @override
  Widget build(BuildContext context) => Card(
        elevation: 2,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            OutlinedCircleCountryFlag(countryCode: countryCode),
            Container(
              constraints: const BoxConstraints(maxWidth: AppDimensions.d170),
              padding: const EdgeInsets.only(right: AppDimensions.d10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    country,
                    style: context.tht.labelMedium,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    formatDates(dateFrom, dateTo),
                    style: context.tht.titleSmall?.copyWith(
                      fontSize: AppDimensions.d12,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            const SizedBox(width: AppDimensions.d4),
            Container(
              decoration: BoxDecoration(
                color: context.thc.secondaryContainer,
                borderRadius: const BorderRadius.horizontal(
                  right: Radius.circular(AppDimensions.d12),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(AppDimensions.d10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TransportCircle(
                      transportType: transportType,
                      enableInnerShadow: true,
                    ),
                    const SizedBox(height: AppDimensions.d4),
                    Flexible(
                      child: AutoSizeText(
                        MoneyFormat.formatPositiveAmountCurrency(totalExpensesAmount, totalExpensesCurrency),
                        style: context.tht.labelMedium?.copyWith(
                          fontFamily: ThemeManager.robotoSerifFont,
                        ),
                        maxLines: 2,
                        textAlign: TextAlign.center,
                        minFontSize: AppDimensions.d14,
                        maxFontSize: AppDimensions.d18,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
}
