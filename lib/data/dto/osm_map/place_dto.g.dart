// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlaceDtoImpl _$$PlaceDtoImplFromJson(Map<String, dynamic> json) => _$PlaceDtoImpl(
      name: json['name'] as String,
      displayName: json['display_name'] as String,
      category: json['category'] as String,
      type: json['type'] as String,
      address: PlaceAddressDto.fromJson(json['address'] as Map<String, dynamic>),
      geometry: GeometryDto.fromJson(json['geometry'] as Map<String, dynamic>),
      extratags:
          json['extratags'] == null ? null : PlaceExtraTagsDto.fromJson(json['extratags'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PlaceDtoImplToJson(_$PlaceDtoImpl instance) => <String, dynamic>{
      'name': instance.name,
      'display_name': instance.displayName,
      'category': instance.category,
      'type': instance.type,
      'address': instance.address.toJson(),
      'geometry': instance.geometry.toJson(),
      'extratags': instance.extratags?.toJson(),
    };
