import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trip_tally/domain/entities/location/create_location_entity.dart';

part 'create_location_dto.freezed.dart';
part 'create_location_dto.g.dart';

@freezed
abstract class CreateLocationDto with _$CreateLocationDto {
  const factory CreateLocationDto({
    required String countryCode,
    required String cityName,
  }) = _CreateLocationDto;

  factory CreateLocationDto.fromJson(Map<String, dynamic> json) => _$CreateLocationDtoFromJson(json);

  factory CreateLocationDto.fromEntity(CreateLocationEntity entity) {
    return CreateLocationDto(
      countryCode: entity.countryCode,
      cityName: entity.cityName,
    );
  }
}
