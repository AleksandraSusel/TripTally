// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_trip_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateAddTripDto _$CreateAddTripDtoFromJson(Map<String, dynamic> json) => _CreateAddTripDto(
      transportType: json['transport_type'] as String,
      location: CreateLocationDto.fromJson(json['location'] as Map<String, dynamic>),
      dateFrom: json['date_from'] as String,
      dateTo: json['date_to'] as String,
      plannedCost: PriceDto.fromJson(json['planned_cost'] as Map<String, dynamic>),
      expenses: (json['expenses'] as List<dynamic>).map((e) => ExpenseDto.fromJson(e as Map<String, dynamic>)).toList(),
    );

Map<String, dynamic> _$CreateAddTripDtoToJson(_CreateAddTripDto instance) => <String, dynamic>{
      'transport_type': instance.transportType,
      'location': instance.location.toJson(),
      'date_from': instance.dateFrom,
      'date_to': instance.dateTo,
      'planned_cost': instance.plannedCost.toJson(),
      'expenses': instance.expenses.map((e) => e.toJson()).toList(),
    };
