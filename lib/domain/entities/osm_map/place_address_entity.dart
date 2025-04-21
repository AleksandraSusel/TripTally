import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trip_tally/data/dto/osm_map/place_address_dto.dart';

part 'place_address_entity.freezed.dart';

@freezed
abstract class PlaceAddressEntity with _$PlaceAddressEntity {
  const factory PlaceAddressEntity({
    required String country,
    required String countryCode,
    String? houseNumber,
    String? road,
    String? quarter,
    String? suburb,
    String? city,
    String? state,
    String? postcode,
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
