// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_extra_tags_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PlaceExtraTagsDto _$PlaceExtraTagsDtoFromJson(Map<String, dynamic> json) => _PlaceExtraTagsDto(
      lunch: json['lunch'] as String?,
      cuisine: json['cuisine'] as String?,
      website: json['website'] as String?,
      wheelchair: json['wheelchair'] as String?,
      openingHours: json['opening_hours'] as String?,
      indoorSeating: json['indoor_seating'] as String?,
      outdoorSeating: json['outdoor_seating'] as String?,
      reusablePackagingOffer: json['reusable_packaging_offer'] as String?,
      toilets: json['toilets'] as String?,
      toiletsWheelchair: json['toilets:wheelchair'] as String?,
      phone: json['phone'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$PlaceExtraTagsDtoToJson(_PlaceExtraTagsDto instance) => <String, dynamic>{
      'lunch': instance.lunch,
      'cuisine': instance.cuisine,
      'website': instance.website,
      'wheelchair': instance.wheelchair,
      'opening_hours': instance.openingHours,
      'indoor_seating': instance.indoorSeating,
      'outdoor_seating': instance.outdoorSeating,
      'reusable_packaging_offer': instance.reusablePackagingOffer,
      'toilets': instance.toilets,
      'toilets:wheelchair': instance.toiletsWheelchair,
      'phone': instance.phone,
      'image': instance.image,
    };
