// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geometry_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GeometryDto _$GeometryDtoFromJson(Map<String, dynamic> json) => _GeometryDto(
      coordinates: (json['coordinates'] as List<dynamic>).map((e) => (e as num).toDouble()).toList(),
    );

Map<String, dynamic> _$GeometryDtoToJson(_GeometryDto instance) => <String, dynamic>{
      'coordinates': instance.coordinates,
    };
