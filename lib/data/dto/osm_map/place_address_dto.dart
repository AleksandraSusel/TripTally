import 'package:freezed_annotation/freezed_annotation.dart';

part 'place_address_dto.freezed.dart';

part 'place_address_dto.g.dart';

@freezed
class PlaceAddressDto with _$PlaceAddressDto {
  const factory PlaceAddressDto({
    required String country,
    required String countryCode,
    String? houseNumber,
    String? road,
    String? quarter,
    String? suburb,
    String? city,
    String? village,
    String? town,
    String? state,
    String? postcode,
  }) = _PlaceAddressDto;

  factory PlaceAddressDto.fromJson(Map<String, dynamic> json) => _$PlaceAddressDtoFromJson(json);
}
