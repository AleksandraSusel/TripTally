// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_trip_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateAddTripDtoImpl _$$CreateAddTripDtoImplFromJson(Map<String, dynamic> json) => _$CreateAddTripDtoImpl(
      cityName: json['city_name'] as String,
      currency: json['currency'] as String,
      transportType: json['transport_type'] as String,
      countryCode: json['country_code'] as String,
      dateFrom: json['date_from'] as String,
      dateTo: json['date_to'] as String,
      amount: (json['amount'] as num).toDouble(),
    );

Map<String, dynamic> _$$CreateAddTripDtoImplToJson(_$CreateAddTripDtoImpl instance) => <String, dynamic>{
      'city_name': instance.cityName,
      'currency': instance.currency,
      'transport_type': instance.transportType,
      'country_code': instance.countryCode,
      'date_from': instance.dateFrom,
      'date_to': instance.dateTo,
      'amount': instance.amount,
    };
