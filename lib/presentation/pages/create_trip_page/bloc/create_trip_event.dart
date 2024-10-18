part of 'create_trip_bloc.dart';

abstract class CreateTripEvent extends Equatable {
  const CreateTripEvent();

  @override
  List<Object?> get props => [];
}

class OnCreateTripEvent extends CreateTripEvent {
  const OnCreateTripEvent({
    required this.cityName,
    required this.transportType,
    required this.countryCode,
    required this.dateFrom,
    required this.dateTo,
    required this.plannedCost,
  });

  final String cityName;
  final String transportType;
  final String countryCode;
  final String dateFrom;
  final String dateTo;
  final PriceEntity plannedCost;

  @override
  List<Object?> get props => [
        cityName,
        transportType,
        countryCode,
        dateFrom,
        dateTo,
        plannedCost,
      ];
}
