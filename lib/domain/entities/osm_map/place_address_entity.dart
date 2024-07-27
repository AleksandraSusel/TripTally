import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trip_tally/data/dto/osm_map/place_address_dto.dart';

part 'place_address_entity.freezed.dart';

@freezed
class PlaceAddressEntity with _$PlaceAddressEntity {
  const factory PlaceAddressEntity({
    required String? houseNumber,
    required String? road,
    required String? quarter,
    required String? suburb,
    required String? city,
    required String? state,
    required String? postcode,
    required String country,
    required String countryCode,
  }) = _PlaceAddressEntity;

  factory PlaceAddressEntity.fromDto(PlaceAddressDto dto) => PlaceAddressEntity(
        houseNumber: dto.houseNumber,
        road: dto.road,
        quarter: dto.quarter,
        suburb: dto.suburb,
        city: dto.city,
        state: dto.state,
        postcode: dto.postcode,
        country: dto.country,
        countryCode: dto.countryCode,
      );
}
