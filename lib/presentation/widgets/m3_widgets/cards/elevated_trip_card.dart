import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/theme/app_paths.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/utils/enums/transport_type.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/buttons/primary_elevated_button.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/buttons/surface_outlined_button.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/money_container.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/svg_asset.dart';

class ElevatedTripCard extends StatelessWidget {
  const ElevatedTripCard({
    required this.country,
    required this.dateFrom,
    required this.dateTo,
    required this.transportType,
    required this.totalExpensesAmount,
    required this.totalExpensesCurrency,
    required this.imagePath,
    required this.countryCode,
    required this.expectedBudgetAmount,
    required this.expectedBudgetCurrency,
    super.key,
  });

  final String country;
  final String dateFrom;
  final String dateTo;
  final TransportType transportType;
  final int totalExpensesAmount;
  final int expectedBudgetAmount;
  final String totalExpensesCurrency;
  final String expectedBudgetCurrency;
  final String imagePath;
  final String countryCode;

  @override
  Widget build(BuildContext context) => Card(
        elevation: AppDimensions.d4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimensions.d12),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              constraints: const BoxConstraints(minHeight: AppDimensions.d72),
              padding: const EdgeInsets.symmetric(
                vertical: AppDimensions.d14,
                horizontal: AppDimensions.d16,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    backgroundColor: context.thc.primary,
                    child: SvgAsset(
                      transportType.icon,
                      color: context.thc.onPrimary,
                    ),
                  ),
                  const SizedBox(width: AppDimensions.d16),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            country,
                            style: context.tht.displayLarge?.copyWith(fontSize: AppDimensions.d20),
                          ),
                          const SizedBox(width: AppDimensions.d10),
                          CountryFlag.fromCountryCode(
                            countryCode,
                            shape: const RoundedRectangle(2.5),
                            height: AppDimensions.d20,
                            width: AppDimensions.d26,
                          ),
                        ],
                      ),
                      Text(
                        '$dateFrom - $dateTo',
                        style: context.tht.titleSmall,
                      ),
                    ],
                  ),
                  const Spacer(),
                  SvgAsset(
                    AppPaths.binM3,
                    color: context.thc.error,
                  ),
                ],
              ),
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: AppDimensions.d120),
              child: Image.asset(
                imagePath,
                fit: BoxFit.fitWidth,
                width: double.infinity,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(AppDimensions.d16) + const EdgeInsets.only(right: AppDimensions.d8),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: AppDimensions.d122,
                        child: Text(
                          'Expected budget:',
                          style: context.tht.displaySmall,
                        ),
                      ),
                      MoneyContainer(
                        height: AppDimensions.d28,
                        amount: expectedBudgetAmount,
                        currency: expectedBudgetCurrency,
                      ),
                    ],
                  ),
                  const SizedBox(height: AppDimensions.d16),
                  Row(
                    children: [
                      SizedBox(
                        width: AppDimensions.d122,
                        child: Text(
                          'Total expenses:',
                          style: context.tht.displaySmall,
                        ),
                      ),
                      MoneyContainer(
                        height: AppDimensions.d28,
                        amount: totalExpensesAmount,
                        currency: totalExpensesCurrency,
                        theme: MoneyContainerColorTheme.tertiary,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.all(AppDimensions.d10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SurfaceOutlinedButton(
                    text: 'Edit trip',
                    onPressed: () {},
                  ),
                  const SizedBox(width: AppDimensions.d10),
                  PrimaryElevatedButton(
                    text: 'Manage expenses',
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
