import 'package:equatable/equatable.dart';

class NewTripEvent extends Equatable {
  const NewTripEvent();

  @override
  List<Object?> get props => [];
}


class AddTripEvent extends NewTripEvent {
  const AddTripEvent({
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
  final double plannedCost;
}
