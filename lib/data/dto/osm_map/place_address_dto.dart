import 'package:freezed_annotation/freezed_annotation.dart';

part 'place_address_dto.freezed.dart';

part 'place_address_dto.g.dart';

@freezed
class PlaceAddressDto with _$PlaceAddressDto {
  const factory PlaceAddressDto({
    required String? houseNumber,
    required String? road,
    required String? quarter,
    required String? suburb,
    required String? city,
    required String? village,
    required String? town,
    required String? state,
    required String? postcode,
    required String country,
    required String countryCode,
  }) = _PlaceAddressDto;

  factory PlaceAddressDto.fromJson(Map<String, dynamic> json) => _$PlaceAddressDtoFromJson(json);
}
