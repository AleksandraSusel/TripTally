import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trip_tally/data/dto/location/location_dto.dart';

part 'location_entity.freezed.dart';

@freezed
abstract class LocationEntity with _$LocationEntity {
  const factory LocationEntity({
    required String id,
    required String userId,
    required String countryCode,
    required String cityName,
    required DateTime insertedAt,
    required DateTime updatedAt,
  }) = _LocationEntity;

  factory LocationEntity.fromDto(LocationDto dto) {
    return LocationEntity(
      id: dto.id,
      userId: dto.userId,
      countryCode: dto.countryCode,
      cityName: dto.cityName,
      insertedAt: dto.insertedAt,
      updatedAt: dto.updatedAt,
    );
  }
}
