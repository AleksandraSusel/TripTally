import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trip_tally/data/dto/trips/create_trip_dto.dart';

part 'create_trip_entity.freezed.dart';

@freezed
class CreateTripEntity with _$CreateTripEntity {
  const factory CreateTripEntity({
    required String cityName,
    required String transportType,
    required String countryCode,
    required String dateFrom,
    required String dateTo,
    required double plannedCost,
  }) = _CreateTripEntity;

  factory CreateTripEntity.fromDto(CreateTripDto dto) {
    return CreateTripEntity(
      cityName: dto.cityName,
      transportType: dto.transportType,
      countryCode: dto.countryCode,
      dateFrom: dto.dateFrom,
      dateTo: dto.dateTo,
      plannedCost: dto.plannedCost,
    );
  }
}
