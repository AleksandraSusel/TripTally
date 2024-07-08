import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trip_tally/domain/entities/add_trip_entity/add_trip_entity.dart';

part 'add_trip_dto.freezed.dart';

part 'add_trip_dto.g.dart';

@freezed
class AddTripDto with _$AddTripDto {
  const factory AddTripDto({
    required String cityName,
    required String transportType,
    required String countryCode,
    required String dateFrom,
    required String dateTo,
    required double plannedCost,
  }) = _AddTripDto;

  factory AddTripDto.fromJson(Map<String, dynamic> json) => _$AddTripDtoFromJson(json);

  factory AddTripDto.fromEntity(AddTripEntity entity) {
    return AddTripDto(
      cityName: entity.cityName,
      transportType: entity.transportType,
      countryCode: entity.countryCode,
      dateFrom: entity.dateFrom,
      dateTo: entity.dateTo,
      plannedCost: entity.plannedCost,
    );
  }
}
