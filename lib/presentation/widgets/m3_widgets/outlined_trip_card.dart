import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/buttons/primary_elevated_button.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/buttons/warning_outlined_button.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/surface_money_container.dart';

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
  });

  final String country;
  final String dateFrom;
  final String dateTo;
  final String transportType;
  final int totalExpensesAmount;
  final String totalExpensesCurrency;
  final String imagePath;
  final String countryCode;

  @override
  Widget build(BuildContext context) {
    return Card(
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
                          style: context.tht.labelLarge,
                        ),
                        const SizedBox(width: AppDimensions.d10),
                        CountryFlag.fromCountryCode(
                          countryCode,
                          shape: const RoundedRectangle(2.5),
                          height: AppDimensions.d18,
                          width: AppDimensions.d18,
                        ),
                      ],
                    ),
                    Text(
                      '$dateFrom - $dateTo',
                      style: context.tht.titleSmall,
                    ),
                    Row(
                      children: [
                        Text(
                          'Transport type:',
                          style: context.tht.titleSmall,
                        ),
                        const SizedBox(width: AppDimensions.d10),
                        const Icon(Icons.car_crash_rounded),
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
                    SurfaceMoneyContainer(
                      amount: totalExpensesAmount,
                      currency: totalExpensesCurrency,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppDimensions.d24,
              vertical: AppDimensions.d10,
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
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
