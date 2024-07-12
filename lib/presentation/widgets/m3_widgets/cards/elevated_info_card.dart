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
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: AppDimensions.d256),
      child: Card(
        elevation: 2,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            OutlinedCircleCountryFlag(countryCode: countryCode),
            ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: AppDimensions.d96,
                minWidth: AppDimensions.d30,
              ),
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
            const Spacer(),
            ClipRRect(
              clipBehavior: Clip.hardEdge,
              borderRadius: const BorderRadius.horizontal(
                right: Radius.circular(AppDimensions.d12),
              ),
              child: Container(
                constraints: const BoxConstraints(
                  minWidth: AppDimensions.d80,
                  minHeight: AppDimensions.d72,
                ),
                color: context.thc.secondaryContainer,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: AppDimensions.d8, horizontal: AppDimensions.d4),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: AppDimensions.d40,
                        child: TransportCircle(
                          transportType: transportType,
                          enableInnerShadow: true,
                        ),
                      ),
                      const SizedBox(height: AppDimensions.d4),
                      Flexible(
                        child: AutoSizeText(
                          MoneyFormat.formatPositiveAmount(totalExpensesAmount, totalExpensesCurrency),
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
            ),
          ],
        ),
      ),
    );
  }
}
