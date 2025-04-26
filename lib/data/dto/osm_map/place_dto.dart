import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trip_tally/data/dto/osm_map/place_address_dto.dart';
import 'package:trip_tally/data/dto/osm_map/place_extra_tags_dto.dart';

part 'place_dto.freezed.dart';
part 'place_dto.g.dart';

@freezed
abstract class PlaceDto with _$PlaceDto {
  const factory PlaceDto({
    required String name,
    required String displayName,
    required String category,
    required String type,
    required PlaceAddressDto address,
    PlaceExtraTagsDto? extratags,
  }) = _PlaceDto;

  factory PlaceDto.fromJson(Map<String, dynamic> json) => _$PlaceDtoFromJson(json);
}
