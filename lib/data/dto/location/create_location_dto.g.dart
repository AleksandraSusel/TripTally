// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_location_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateLocationDto _$CreateLocationDtoFromJson(Map<String, dynamic> json) => _CreateLocationDto(
      countryCode: json['country_code'] as String,
      cityName: json['city_name'] as String,
    );

Map<String, dynamic> _$CreateLocationDtoToJson(_CreateLocationDto instance) => <String, dynamic>{
      'country_code': instance.countryCode,
      'city_name': instance.cityName,
    };
