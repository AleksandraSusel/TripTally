import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trip_tally/data/dto/trips/trip_dto.dart';

part 'trip_dto_response.freezed.dart';
part 'trip_dto_response.g.dart';

@freezed
class TripDtoResponse with _$TripDtoResponse {
  const factory TripDtoResponse({
    required TripDto trip,
  }) = _TripDtoResponse;

  factory TripDtoResponse.fromJson(Map<String, dynamic> json) => _$TripDtoResponseFromJson(json);
}
