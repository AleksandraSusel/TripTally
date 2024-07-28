import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trip_tally/data/dto/osm_map/place_dto.dart';
import 'package:trip_tally/domain/entities/osm_map/coordinates_entity.dart';
import 'package:trip_tally/domain/entities/osm_map/place_address_entity.dart';
import 'package:trip_tally/domain/entities/osm_map/place_extra_tags_entity.dart';

part 'place_entity.freezed.dart';

@freezed
class PlaceEntity with _$PlaceEntity {
  const factory PlaceEntity({
    required String name,
    required String displayName,
    required String category,
    required String type,
    required PlaceAddressEntity address,
    required CoordinatesEntity coordinates,
    PlaceExtraTagsEntity? extraTags,
  }) = _PlaceEntity;

  factory PlaceEntity.fromDto(PlaceDto dto) => PlaceEntity(
        name: dto.name,
        displayName: dto.displayName,
        category: dto.category,
        type: dto.type,
        address: PlaceAddressEntity.fromDto(dto.address),
        coordinates: CoordinatesEntity.fromDto(dto.geometry),
        extraTags: PlaceExtraTagsEntity.fromDto(dto.extratags),
      );
}
