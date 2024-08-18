// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user_profile_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateUserProfileDtoImpl _$$UpdateUserProfileDtoImplFromJson(Map<String, dynamic> json) => _$UpdateUserProfileDtoImpl(
      username: json['username'] as String,
      country: json['country'] as String,
      defaultCurrencyCode: json['default_currency_code'] as String,
    );

Map<String, dynamic> _$$UpdateUserProfileDtoImplToJson(_$UpdateUserProfileDtoImpl instance) => <String, dynamic>{
      'username': instance.username,
      'country': instance.country,
      'default_currency_code': instance.defaultCurrencyCode,
    };
