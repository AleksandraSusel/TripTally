import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trip_tally/data/dto/osm_map/geometry_dto.dart';
import 'package:trip_tally/data/dto/osm_map/place_dto.dart';

part 'osm_response_dto.freezed.dart';
part 'osm_response_dto.g.dart';

@freezed
class OsmResponseDto with _$OsmResponseDto {
  const factory OsmResponseDto({
    required List<FeatureDto> features,
  }) = _OsmResponseDto;

  factory OsmResponseDto.fromJson(Map<String, dynamic> json) => _$OsmResponseDtoFromJson(json);
}

@freezed
class FeatureDto with _$FeatureDto {
  const factory FeatureDto({
    required PlaceDto properties,
    required GeometryDto geometry,
  }) = _FeatureDto;

  factory FeatureDto.fromJson(Map<String, dynamic> json) => _$FeatureDtoFromJson(json);
}
