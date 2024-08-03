// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'osm_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OsmResponseDtoImpl _$$OsmResponseDtoImplFromJson(Map<String, dynamic> json) => _$OsmResponseDtoImpl(
      features: (json['features'] as List<dynamic>).map((e) => FeatureDto.fromJson(e as Map<String, dynamic>)).toList(),
    );

Map<String, dynamic> _$$OsmResponseDtoImplToJson(_$OsmResponseDtoImpl instance) => <String, dynamic>{
      'features': instance.features.map((e) => e.toJson()).toList(),
    };

_$FeatureDtoImpl _$$FeatureDtoImplFromJson(Map<String, dynamic> json) => _$FeatureDtoImpl(
      properties: PlaceDto.fromJson(json['properties'] as Map<String, dynamic>),
      geometry: GeometryDto.fromJson(json['geometry'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FeatureDtoImplToJson(_$FeatureDtoImpl instance) => <String, dynamic>{
      'properties': instance.properties.toJson(),
      'geometry': instance.geometry.toJson(),
    };
