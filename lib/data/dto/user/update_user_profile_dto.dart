import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trip_tally/domain/entities/user/update_user_profile_entity.dart';

part 'update_user_profile_dto.freezed.dart';

part 'update_user_profile_dto.g.dart';

@freezed
class UpdateUserProfileDto with _$UpdateUserProfileDto {
  const factory UpdateUserProfileDto({
    required String username,
    required String country,
    required String defaultCurrencyCode,
    @JsonKey(includeToJson: false, includeFromJson: false) File? profilePicture,
  }) = _UpdateUserProfileDto;

  factory UpdateUserProfileDto.fromJson(Map<String, dynamic> json) => _$UpdateUserProfileDtoFromJson(json);

  factory UpdateUserProfileDto.fromEntity(UpdateUserProfileEntity entity) {
    return UpdateUserProfileDto(
      username: entity.username,
      country: entity.country,
      defaultCurrencyCode: entity.defaultCurrencyCode,
      profilePicture: entity.profilePicture?.path != null ? File(entity.profilePicture!.path) : null,
    );
  }
}
