import 'package:auto_size_text/auto_size_text.dart';
import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/theme/app_paths.dart';
import 'package:trip_tally/presentation/utils/date_format.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/utils/enums/transport_type.dart';
import 'package:trip_tally/presentation/utils/money_format.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/transport_circle.dart';

class OutlinedInfoCard extends StatelessWidget {
  const OutlinedInfoCard({
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
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppDimensions.d12),
        side: BorderSide(color: context.thc.onSurface),
      ),
      elevation: 0,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: AppDimensions.d10,
              right: AppDimensions.d10,
              top: AppDimensions.d20,
              bottom: AppDimensions.d20,
            ),
            child: SizedBox(
              height: AppDimensions.d36,
              child: TransportCircle(
                transportType: transportType,
                enableInnerShadow: true,
              ),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    child: Text(
                      country,
                      style: context.tht.labelMedium,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(width: AppDimensions.d10),
                  OverflowBox(
                    maxWidth: 22,
                    fit: OverflowBoxFit.deferToChild,
                    child: CountryFlag.fromCountryCode(
                      countryCode,
                      shape: const RoundedRectangle(2.5),
                      height: AppDimensions.d16,
                      width: AppDimensions.d22,
                    ),
                  ),
                ],
              ),
              Text(
                formatDates(dateFrom, dateTo),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: context.tht.titleSmall?.copyWith(
                  fontSize: AppDimensions.d12,
                ),
              ),
            ],
          ),
          const Spacer(),
          Center(
            child: AutoSizeText(
              MoneyFormat.formatNegativeAmount(totalExpensesAmount, totalExpensesCurrency),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: context.tht.displayLarge?.copyWith(
                fontWeight: FontWeight.w900,
                fontSize: AppDimensions.d16,
                color: context.thc.error,
              ),
              maxFontSize: AppDimensions.d16,
            ),
          ),
          const SizedBox(width: AppDimensions.d16),
          Container(
            clipBehavior: Clip.hardEdge,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.horizontal(
                right: Radius.circular(AppDimensions.d12),
              ),
            ),
            constraints: const BoxConstraints(
              maxWidth: AppDimensions.d86,
              maxHeight: AppDimensions.d120,
              minHeight: AppDimensions.d80,
            ),
            child: Image.asset(
              AppPaths.italy,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}
