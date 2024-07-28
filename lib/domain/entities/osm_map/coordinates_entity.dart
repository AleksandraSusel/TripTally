import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trip_tally/data/dto/osm_map/geometry_dto.dart';

part 'coordinates_entity.freezed.dart';

@freezed
class CoordinatesEntity with _$CoordinatesEntity {
  const factory CoordinatesEntity({
    required double lat,
    required double lon,
  }) = _CoordinatesEntity;

  factory CoordinatesEntity.fromDto(GeometryDto dto) => CoordinatesEntity(
        lat: dto.coordinates[1],
        lon: dto.coordinates[0],
      );
}
