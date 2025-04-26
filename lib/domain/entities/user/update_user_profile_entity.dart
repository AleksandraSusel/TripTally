import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

part 'update_user_profile_entity.freezed.dart';

@freezed
abstract class UpdateUserProfileEntity with _$UpdateUserProfileEntity {
  const factory UpdateUserProfileEntity({
    required String username,
    required String country,
    required String defaultCurrencyCode,
    XFile? profilePicture,
  }) = _UpdateUserProfileEntity;
}
