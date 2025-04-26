// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_trips_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetTripsDto _$GetTripsDtoFromJson(Map<String, dynamic> json) => _GetTripsDto(
      trips: (json['trips'] as List<dynamic>).map((e) => TripDto.fromJson(e as Map<String, dynamic>)).toList(),
    );

Map<String, dynamic> _$GetTripsDtoToJson(_GetTripsDto instance) => <String, dynamic>{
      'trips': instance.trips.map((e) => e.toJson()).toList(),
    };
