// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'place_extra_tags_dto.freezed.dart';

part 'place_extra_tags_dto.g.dart';

@freezed
class PlaceExtraTagsDto with _$PlaceExtraTagsDto {
  const factory PlaceExtraTagsDto({
    String? lunch,
    String? cuisine,
    String? website,
    String? wheelchair,
    String? openingHours,
    String? indoorSeating,
    String? outdoorSeating,
    String? reusablePackagingOffer,
    String? toilets,
    @JsonKey(name: 'toilets:wheelchair') String? toiletsWheelchair,
    String? phone,
    String? image,
  }) = _PlaceExtraTagsDto;

  factory PlaceExtraTagsDto.fromJson(Map<String, dynamic> json) => _$PlaceExtraTagsDtoFromJson(json);
}
