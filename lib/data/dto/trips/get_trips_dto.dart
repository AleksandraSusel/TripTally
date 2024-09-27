import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trip_tally/data/dto/trips/trip_dto.dart';

part 'get_trips_dto.freezed.dart';
part 'get_trips_dto.g.dart';

@freezed
class GetTripsDto with _$GetTripsDto {
  const factory GetTripsDto({
    required List<TripDto> trips,
  }) = _GetTripsDto;

  factory GetTripsDto.fromJson(Map<String, dynamic> json) => _$GetTripsDtoFromJson(json);
}
