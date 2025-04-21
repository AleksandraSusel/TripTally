import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trip_tally/data/dto/osm_map/geometry_dto.dart';
import 'package:trip_tally/data/dto/osm_map/place_dto.dart';
import 'package:trip_tally/domain/entities/osm_map/coordinates_entity.dart';
import 'package:trip_tally/domain/entities/osm_map/place_address_entity.dart';
import 'package:trip_tally/domain/entities/osm_map/place_extra_tags_entity.dart';

part 'place_entity.freezed.dart';

@freezed
abstract class PlaceEntity with _$PlaceEntity {
  const factory PlaceEntity({
    required String name,
    required String displayName,
    required String category,
    required String type,
    required PlaceAddressEntity address,
    required CoordinatesEntity coordinates,
    PlaceExtraTagsEntity? extraTags,
  }) = _PlaceEntity;

  factory PlaceEntity.fromDto(PlaceDto placeDto, GeometryDto geometryDto) => PlaceEntity(
        name: placeDto.name,
        displayName: placeDto.displayName,
        category: placeDto.category,
        type: placeDto.type,
        address: PlaceAddressEntity.fromDto(placeDto.address),
        coordinates: CoordinatesEntity.fromDto(geometryDto),
        extraTags: PlaceExtraTagsEntity.fromDto(placeDto.extratags),
      );
}
