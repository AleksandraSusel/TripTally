import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/theme/app_paths.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/utils/enums/transport_type.dart';
import 'package:trip_tally/presentation/utils/router/app_router.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/cards/elevated_selection_card.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/cards/outlined_trip_card.dart';

class Trips extends StatelessWidget {
  const Trips({
    this.isOnTrip = false,
    super.key,
  });

  final bool isOnTrip;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: const EdgeInsets.symmetric(horizontal: AppDimensions.d16),
      child: _Body(isOnTrip: isOnTrip),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({required this.isOnTrip});

  final bool isOnTrip;

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: AppDimensions.d16),
          child: Column(
            children: [
              if (isOnTrip) ...[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    context.tr.manageTripsPage_currentlyOnTrip,
                    style: context.tht.labelMedium,
                  ),
                ),
                const OutlinedTripCard(
                  country: 'Italy',
                  dateFrom: '20-10-2024',
                  dateTo: '26-10-2024',
                  transportType: TransportType.flight,
                  totalExpensesAmount: 6000,
                  totalExpensesCurrency: r'$',
                  imagePath: AppPaths.italy,
                  countryCode: 'IT',
                ),
                const Divider(),
              ],
              ElevatedSelectionCard(
                title: context.tr.manageTripsPage_planNew,
                subtitle: context.tr.manageTripsPage_planNewSubtitle,
                iconBGColor: context.thc.tertiaryContainer,
                iconAsset: AppPaths.plusM3,
                onTap: () => context.router.push(CreateTripBasicInfoRoute()),
              ),
              const SizedBox(height: AppDimensions.d8),
              ElevatedSelectionCard(
                title: context.tr.manageTripsPage_editTrips,
                subtitle: context.tr.manageTripsPage_editTripsSubtitle,
                iconBGColor: context.thc.errorContainer,
                iconAsset: AppPaths.edit,
                onTap: () => context.router.push(const PlannedTripsRoute()),
              ),
              const SizedBox(height: AppDimensions.d8),
              ElevatedSelectionCard(
                title: context.tr.manageTripsPage_history,
                subtitle: context.tr.manageTripsPage_historySubtitle,
                iconBGColor: context.thc.surfaceContainerHighest,
                iconAsset: AppPaths.historyM3,
                onTap: () {},
              ),
            ],
          ),
        ),
      );
}
