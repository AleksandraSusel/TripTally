// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geometry_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GeometryDtoImpl _$$GeometryDtoImplFromJson(Map<String, dynamic> json) => _$GeometryDtoImpl(
      coordinates: (json['coordinates'] as List<dynamic>).map((e) => (e as num).toDouble()).toList(),
    );

Map<String, dynamic> _$$GeometryDtoImplToJson(_$GeometryDtoImpl instance) => <String, dynamic>{
      'coordinates': instance.coordinates,
    };
