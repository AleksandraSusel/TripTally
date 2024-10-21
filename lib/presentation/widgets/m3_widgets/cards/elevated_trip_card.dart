import 'package:flutter/material.dart';
import 'package:trip_tally/domain/entities/trips/trip_entity.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/theme/app_paths.dart';
import 'package:trip_tally/presentation/utils/date_format.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/utils/enums/transport_type.dart';
import 'package:trip_tally/presentation/widgets/keys/widgets_keys.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/buttons/primary_elevated_button.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/buttons/surface_outlined_button.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/money_container.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/rectangular_country_flag.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/svg_asset.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/transport_circle.dart';
import 'package:world_countries/world_countries.dart';

class ElevatedTripCard extends StatelessWidget {
  const ElevatedTripCard({
    required this.totalExpensesAmount,
    required this.imagePath,
    required this.entity,
    required this.onEditPressed,
    required this.onManageExpensesPressed,
    super.key,
    this.onDeletePressed,
  });

  final TripEntity entity;

  final double totalExpensesAmount;
  final String imagePath;
  final VoidCallback? onDeletePressed;
  final VoidCallback onEditPressed;
  final VoidCallback onManageExpensesPressed;

  @override
  Widget build(BuildContext context) {
    final bool spendMoreThanExpected = double.parse(entity.plannedCost.amount) < totalExpensesAmount;
    return Card(
      elevation: AppDimensions.d2,
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
                TransportCircle(transportType: TransportType.parseTransportType(entity.transportType)),
                const SizedBox(width: AppDimensions.d16),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          WorldCountry.maybeFromCodeShort(entity.location.countryCode)?.name.name ?? '',
                          style: context.tht.displayLarge?.copyWith(fontSize: AppDimensions.d20),
                        ),
                        const SizedBox(width: AppDimensions.d10),
                        RectangularCountryFlag(countryCode: entity.location.countryCode),
                      ],
                    ),
                    Text(
                      formatDates(entity.dateFrom, entity.dateTo),
                      style: context.tht.titleSmall,
                    ),
                  ],
                ),
                const Spacer(),
                IconButton(
                  icon: SvgAsset(
                    key: WidgetsKeys.elevatedTripCardDeleteButton,
                    AppPaths.binM3,
                    color: context.thc.error,
                  ),
                  onPressed: onDeletePressed,
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
                      amount: double.parse(entity.plannedCost.amount),
                      currency: entity.plannedCost.currency,
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
                      currency: entity.plannedCost.currency,
                      theme:
                          spendMoreThanExpected ? MoneyContainerColorTheme.warning : MoneyContainerColorTheme.tertiary,
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
                  onPressed: onEditPressed,
                ),
                const SizedBox(width: AppDimensions.d10),
                PrimaryElevatedButton(
                  text: 'Manage expenses',
                  onPressed: onManageExpensesPressed,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
