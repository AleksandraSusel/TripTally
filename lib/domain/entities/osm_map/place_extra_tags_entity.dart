import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trip_tally/data/dto/osm_map/place_extra_tags_dto.dart';

part 'place_extra_tags_entity.freezed.dart';

@freezed
class PlaceExtraTagsEntity with _$PlaceExtraTagsEntity {
  const factory PlaceExtraTagsEntity({
    String? lunch,
    String? cuisine,
    String? website,
    String? wheelchair,
    String? openingHours,
    String? indoorSeating,
    String? outdoorSeating,
    String? reusablePackagingOffer,
    String? toilets,
    String? toiletsWheelchair,
    String? phone,
    String? image,
  }) = _PlaceExtraTagsEntity;

  factory PlaceExtraTagsEntity.fromDto(PlaceExtraTagsDto? dto) => PlaceExtraTagsEntity(
        lunch: dto?.lunch,
        cuisine: dto?.cuisine,
        website: dto?.website,
        wheelchair: dto?.wheelchair,
        openingHours: dto?.openingHours,
        indoorSeating: dto?.indoorSeating,
        outdoorSeating: dto?.outdoorSeating,
        reusablePackagingOffer: dto?.reusablePackagingOffer,
        toilets: dto?.toilets,
        toiletsWheelchair: dto?.toiletsWheelchair,
        phone: dto?.phone,
        image: dto?.image,
      );
}
