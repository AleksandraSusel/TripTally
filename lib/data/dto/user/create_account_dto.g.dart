// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_account_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateAccountDtoImpl _$$CreateAccountDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateAccountDtoImpl(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$CreateAccountDtoImplToJson(
        _$CreateAccountDtoImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
