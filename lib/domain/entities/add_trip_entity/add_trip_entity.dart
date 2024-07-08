import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trip_tally/data/dto/trips/add_trip_dto.dart';

part 'add_trip_entity.freezed.dart';

@freezed
class AddTripEntity with _$AddTripEntity {
  const factory AddTripEntity({
    required String cityName,
    required String transportType,
    required String countryCode,
    required String dateFrom,
    required String dateTo,
    required double plannedCost,
  }) = _AddTripEntity;

  factory AddTripEntity.fromDto(AddTripDto dto) {
    return AddTripEntity(
      cityName: dto.cityName,
      transportType: dto.transportType,
      countryCode: dto.countryCode,
      dateFrom: dto.dateFrom,
      dateTo: dto.dateTo,
      plannedCost: dto.plannedCost,
    );
  }
}
