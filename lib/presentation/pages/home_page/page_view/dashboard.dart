import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trip_tally/domain/entities/trips/trip_entity.dart';
import 'package:trip_tally/presentation/pages/home_page/bloc/get_today_trips_bloc.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/theme/app_paths.dart';
import 'package:trip_tally/presentation/utils/basic_state.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/utils/enums/transport_type.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/cards/elevated_info_card.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/cards/outlined_trip_card.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: AppDimensions.d80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: AppDimensions.d16,
            ),
            BlocBuilder<GetTodayTripsBloc, BasicState<TripEntity?>>(
              builder: (context, state) {
                return switch (state) {
                  LoadedState(data: final trip) when trip != null => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.all(AppDimensions.d8) + const EdgeInsets.only(left: AppDimensions.d8),
                          child: Text(
                            context.tr.homePage_youAreCurrentlyOnATrip,
                            style: context.tht.labelSmall,
                          ),
                        ),
                        OutlinedTripCard(
                          country: trip.location.cityName,
                          dateFrom: trip.dateFrom,
                          dateTo: trip.dateTo,
                          transportType: TransportType.parseTransportType(trip.transportType),
                          totalExpensesAmount: trip.totalExpenses ?? 0,
                          totalExpensesCurrency: trip.plannedCost.currency,
                          countryCode: trip.location.countryCode,
                          imagePath: _getImagePath(trip.location.countryCode),
                        ),
                        const Divider(thickness: 1),
                      ],
                    ),
                  _ => const SizedBox.shrink(),
                };
              },
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: AppDimensions.d20,
                left: AppDimensions.d16,
                bottom: AppDimensions.d8,
              ),
              child: Text(context.tr.homePage_yourPlannedTrips, style: context.tht.labelSmall),
            ),
            SizedBox(
              height: AppDimensions.d90,
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: AppDimensions.d8),
                scrollDirection: Axis.horizontal,
                itemCount: 2,
                itemBuilder: (BuildContext context, int index) => const ElevatedInfoCard(
                  country: 'Greece',
                  dateFrom: '2024-30-07',
                  dateTo: '2024-30-08',
                  transportType: TransportType.flight,
                  totalExpensesAmount: 10000,
                  totalExpensesCurrency: '€',
                  countryCode: 'GR',
                ),
              ),
            ),
            SizedBox(
              height: AppDimensions.d90,
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: AppDimensions.d8),
                scrollDirection: Axis.horizontal,
                itemCount: 2,
                itemBuilder: (BuildContext context, int index) => const ElevatedInfoCard(
                  country: 'Greece',
                  dateFrom: '2024-30-07',
                  dateTo: '2024-30-08',
                  transportType: TransportType.flight,
                  totalExpensesAmount: 10000,
                  totalExpensesCurrency: '€',
                  countryCode: 'GR',
                ),
              ),
            ),
            //
          ],
        ),
      ),
    );
  }

  String _getImagePath(String countryCode) {
    switch (countryCode.toUpperCase()) {
      case 'IT':
        return AppPaths.italy;
      case 'GR':
        return AppPaths.greece;
      default:
        return AppPaths.italy;
    }
  }
}
