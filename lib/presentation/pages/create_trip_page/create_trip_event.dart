import 'package:equatable/equatable.dart';

class CreateTripEvent extends Equatable {
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
    required this.currency,
  });

  final String cityName;
  final String transportType;
  final String currency;
  final String countryCode;
  final String dateFrom;
  final String dateTo;
  final double plannedCost;
}
