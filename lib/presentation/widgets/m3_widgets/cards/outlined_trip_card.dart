import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/utils/date_format.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/utils/enums/transport_type.dart';
import 'package:trip_tally/presentation/utils/router/app_router.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/buttons/primary_elevated_button.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/buttons/warning_outlined_button.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/money_container.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/rectangular_country_flag.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/svg_asset.dart';

class OutlinedTripCard extends StatelessWidget {
  const OutlinedTripCard({
    required this.country,
    required this.dateFrom,
    required this.dateTo,
    required this.transportType,
    required this.totalExpensesAmount,
    required this.totalExpensesCurrency,
    required this.imagePath,
    required this.countryCode,
    super.key,
    this.areThereBottomAction = true,
  });

  final String country;
  final String dateFrom;
  final String dateTo;
  final TransportType transportType;
  final double totalExpensesAmount;
  final String totalExpensesCurrency;
  final String imagePath;
  final String countryCode;
  final bool? areThereBottomAction;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: AppDimensions.d16),
      elevation: AppDimensions.zero,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: context.thc.shadow,
        ),
        borderRadius: BorderRadius.circular(AppDimensions.d12),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(AppDimensions.d12),
            ),
            child: Image.asset(imagePath),
          ),
          Padding(
            padding: const EdgeInsets.all(AppDimensions.d16) + const EdgeInsets.only(right: AppDimensions.d8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          country,
                          style: context.tht.titleLarge,
                        ),
                        const SizedBox(width: AppDimensions.d10),
                        RectangularCountryFlag(countryCode: countryCode),
                      ],
                    ),
                    Text(
                      formatDates(dateFrom, dateTo),
                      style: context.tht.titleSmall,
                    ),
                    Row(
                      children: [
                        Text(
                          'Transport type:',
                          style: context.tht.titleSmall,
                        ),
                        const SizedBox(width: AppDimensions.d10),
                        SvgAsset(
                          transportType.icon,
                          color: context.thc.onSurface,
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Total expenses:',
                      style: context.tht.labelSmall,
                    ),
                    const SizedBox(height: AppDimensions.d16),
                    MoneyContainer(
                      amount: totalExpensesAmount,
                      currency: totalExpensesCurrency,
                    ),
                  ],
                ),
              ],
            ),
          ),
          if (areThereBottomAction ?? true) const Divider(),
          if (areThereBottomAction ?? false)
            Padding(
              padding: const EdgeInsets.only(
                left: AppDimensions.d16,
                right: AppDimensions.d16,
                bottom: AppDimensions.d10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  WarningOutlinedButton(
                    text: 'End the trip',
                    onPressed: () {},
                  ),
                  PrimaryElevatedButton(
                    text: 'Add expense',
                    onPressed: () => context.router.push(CreateExpensesRoute(tripId: '', currency: '')),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
