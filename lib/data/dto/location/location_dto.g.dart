// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationDtoImpl _$$LocationDtoImplFromJson(Map<String, dynamic> json) => _$LocationDtoImpl(
      id: json['id'] as String,
      userId: json['user_id'] as String,
      countryCode: json['country_code'] as String,
      cityName: json['city_name'] as String,
      insertedAt: DateTime.parse(json['inserted_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$LocationDtoImplToJson(_$LocationDtoImpl instance) => <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'country_code': instance.countryCode,
      'city_name': instance.cityName,
      'inserted_at': instance.insertedAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };
