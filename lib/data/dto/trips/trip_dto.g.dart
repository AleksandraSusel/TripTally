// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TripDtoImpl _$$TripDtoImplFromJson(Map<String, dynamic> json) => _$TripDtoImpl(
      id: json['id'] as String,
      status: json['status'] as String,
      location: LocationDto.fromJson(json['location'] as Map<String, dynamic>),
      userId: json['user_id'] as String,
      dateFrom: json['date_from'] as String,
      dateTo: json['date_to'] as String,
      expenses: (json['expenses'] as List<dynamic>).map((e) => ExpenseDto.fromJson(e as Map<String, dynamic>)).toList(),
      transportType: json['transport_type'] as String,
      plannedCost: PriceDto.fromJson(json['planned_cost'] as Map<String, dynamic>),
      insertedAt: DateTime.parse(json['inserted_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$TripDtoImplToJson(_$TripDtoImpl instance) => <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'location': instance.location.toJson(),
      'user_id': instance.userId,
      'date_from': instance.dateFrom,
      'date_to': instance.dateTo,
      'expenses': instance.expenses.map((e) => e.toJson()).toList(),
      'transport_type': instance.transportType,
      'planned_cost': instance.plannedCost.toJson(),
      'inserted_at': instance.insertedAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };
