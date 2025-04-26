import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_dto.freezed.dart';
part 'location_dto.g.dart';

@freezed
abstract class LocationDto with _$LocationDto {
  const factory LocationDto({
    required String id,
    required String userId,
    required String countryCode,
    required String cityName,
    required DateTime insertedAt,
    required DateTime updatedAt,
  }) = _LocationDto;

  factory LocationDto.fromJson(Map<String, dynamic> json) => _$LocationDtoFromJson(json);
}
