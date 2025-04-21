// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PlaceDto _$PlaceDtoFromJson(Map<String, dynamic> json) => _PlaceDto(
      name: json['name'] as String,
      displayName: json['display_name'] as String,
      category: json['category'] as String,
      type: json['type'] as String,
      address: PlaceAddressDto.fromJson(json['address'] as Map<String, dynamic>),
      extratags:
          json['extratags'] == null ? null : PlaceExtraTagsDto.fromJson(json['extratags'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PlaceDtoToJson(_PlaceDto instance) => <String, dynamic>{
      'name': instance.name,
      'display_name': instance.displayName,
      'category': instance.category,
      'type': instance.type,
      'address': instance.address.toJson(),
      'extratags': instance.extratags?.toJson(),
    };
