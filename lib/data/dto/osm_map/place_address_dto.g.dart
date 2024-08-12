// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_address_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlaceAddressDtoImpl _$$PlaceAddressDtoImplFromJson(Map<String, dynamic> json) => _$PlaceAddressDtoImpl(
      country: json['country'] as String,
      countryCode: json['country_code'] as String,
      houseNumber: json['house_number'] as String?,
      road: json['road'] as String?,
      quarter: json['quarter'] as String?,
      suburb: json['suburb'] as String?,
      city: json['city'] as String?,
      village: json['village'] as String?,
      town: json['town'] as String?,
      state: json['state'] as String?,
      postcode: json['postcode'] as String?,
    );

Map<String, dynamic> _$$PlaceAddressDtoImplToJson(_$PlaceAddressDtoImpl instance) => <String, dynamic>{
      'country': instance.country,
      'country_code': instance.countryCode,
      'house_number': instance.houseNumber,
      'road': instance.road,
      'quarter': instance.quarter,
      'suburb': instance.suburb,
      'city': instance.city,
      'village': instance.village,
      'town': instance.town,
      'state': instance.state,
      'postcode': instance.postcode,
    };
