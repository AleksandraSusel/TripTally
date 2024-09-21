import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_trip_entity.freezed.dart';

@freezed
class CreateTripEntity with _$CreateTripEntity {
  const factory CreateTripEntity({
    required String cityName,
    required String currency,
    required String transportType,
    required String countryCode,
    required String dateFrom,
    required String dateTo,
    required double plannedCost,
  }) = _CreateTripEntity;
}
