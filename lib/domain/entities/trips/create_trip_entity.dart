import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trip_tally/domain/entities/price/price_entity.dart';

part 'create_trip_entity.freezed.dart';

@freezed
class CreateTripEntity with _$CreateTripEntity {
  const factory CreateTripEntity({
    required String cityName,
    required String transportType,
    required String countryCode,
    required String dateFrom,
    required String dateTo,
    required PriceEntity plannedCost,
  }) = _CreateTripEntity;
}
