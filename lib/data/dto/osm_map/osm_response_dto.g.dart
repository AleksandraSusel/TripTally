// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'osm_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OsmResponseDto _$OsmResponseDtoFromJson(Map<String, dynamic> json) => _OsmResponseDto(
      features: (json['features'] as List<dynamic>).map((e) => FeatureDto.fromJson(e as Map<String, dynamic>)).toList(),
    );

Map<String, dynamic> _$OsmResponseDtoToJson(_OsmResponseDto instance) => <String, dynamic>{
      'features': instance.features.map((e) => e.toJson()).toList(),
    };

_FeatureDto _$FeatureDtoFromJson(Map<String, dynamic> json) => _FeatureDto(
      properties: PlaceDto.fromJson(json['properties'] as Map<String, dynamic>),
      geometry: GeometryDto.fromJson(json['geometry'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FeatureDtoToJson(_FeatureDto instance) => <String, dynamic>{
      'properties': instance.properties.toJson(),
      'geometry': instance.geometry.toJson(),
    };
