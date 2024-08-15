part of 'update_user_profile_bloc.dart';

@freezed
class UpdateUserProfileState with _$UpdateUserProfileState {
  const factory UpdateUserProfileState.initial() = _Initial;

  const factory UpdateUserProfileState.loading() = _Loading;

  const factory UpdateUserProfileState.success() = _Success;

  const factory UpdateUserProfileState.failure(Errors error) = _Failure;
}
