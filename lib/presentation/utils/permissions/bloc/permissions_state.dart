part of 'permissions_bloc.dart';

@freezed
class PermissionsState with _$PermissionsState {
  const factory PermissionsState.loaded(PermissionStatus status) = _Loaded;

  const factory PermissionsState.loading() = _Loading;

  const factory PermissionsState.error(Errors error) = _Error;

  const factory PermissionsState.permanentlyDenied() = _PermanentlyDenied;
}
