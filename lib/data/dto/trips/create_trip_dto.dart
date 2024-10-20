import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trip_tally/data/dto/price/price_dto.dart';
import 'package:trip_tally/domain/entities/trips/create_trip_entity.dart';

part 'create_trip_dto.freezed.dart';

part 'create_trip_dto.g.dart';

@freezed
class CreateTripDto with _$CreateTripDto {
  const factory CreateTripDto({
    required String cityName,
    required String transportType,
    required String countryCode,
    required String dateFrom,
    required String dateTo,
    required PriceDto plannedCost,
  }) = _CreateAddTripDto;

  factory CreateTripDto.fromJson(Map<String, dynamic> json) => _$CreateTripDtoFromJson(json);

  factory CreateTripDto.fromEntity(CreateTripEntity entity) {
    return CreateTripDto(
      cityName: entity.cityName,
      transportType: entity.transportType,
      countryCode: entity.countryCode,
      dateFrom: entity.dateFrom,
      dateTo: entity.dateTo,
      plannedCost: PriceDto.fromEntity(entity.plannedCost),
    );
  }
}
