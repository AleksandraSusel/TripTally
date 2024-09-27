// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_trips_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetTripsDtoImpl _$$GetTripsDtoImplFromJson(Map<String, dynamic> json) => _$GetTripsDtoImpl(
      trips: (json['trips'] as List<dynamic>).map((e) => TripDto.fromJson(e as Map<String, dynamic>)).toList(),
    );

Map<String, dynamic> _$$GetTripsDtoImplToJson(_$GetTripsDtoImpl instance) => <String, dynamic>{
      'trips': instance.trips.map((e) => e.toJson()).toList(),
    };
