// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_trip_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddTripDtoImpl _$$AddTripDtoImplFromJson(Map<String, dynamic> json) => _$AddTripDtoImpl(
      cityName: json['city_name'] as String,
      transportType: json['transport_type'] as String,
      countryCode: json['country_code'] as String,
      dateFrom: json['date_from'] as String,
      dateTo: json['date_to'] as String,
      plannedCost: (json['planned_cost'] as num).toDouble(),
    );

Map<String, dynamic> _$$AddTripDtoImplToJson(_$AddTripDtoImpl instance) => <String, dynamic>{
      'city_name': instance.cityName,
      'transport_type': instance.transportType,
      'country_code': instance.countryCode,
      'date_from': instance.dateFrom,
      'date_to': instance.dateTo,
      'planned_cost': instance.plannedCost,
    };
