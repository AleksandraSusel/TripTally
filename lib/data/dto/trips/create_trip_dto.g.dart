// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_trip_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateAddTripDtoImpl _$$CreateAddTripDtoImplFromJson(Map<String, dynamic> json) => _$CreateAddTripDtoImpl(
      cityName: json['city_name'] as String,
      transportType: json['transport_type'] as String,
      countryCode: json['country_code'] as String,
      dateFrom: json['date_from'] as String,
      dateTo: json['date_to'] as String,
      plannedCost: PriceDto.fromJson(json['planned_cost'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreateAddTripDtoImplToJson(_$CreateAddTripDtoImpl instance) => <String, dynamic>{
      'city_name': instance.cityName,
      'transport_type': instance.transportType,
      'country_code': instance.countryCode,
      'date_from': instance.dateFrom,
      'date_to': instance.dateTo,
      'planned_cost': instance.plannedCost.toJson(),
    };
