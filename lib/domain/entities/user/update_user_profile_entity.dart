import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_user_profile_entity.freezed.dart';

@freezed
class UpdateUserProfileEntity with _$UpdateUserProfileEntity {
  const factory UpdateUserProfileEntity({
    required String username,
    required String country,
    required String defaultCurrencyCode,
  }) = _UpdateUserProfileEntity;
}
