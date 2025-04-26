part of 'permissions_bloc.dart';

sealed class PermissionsEvent extends Equatable {
  const PermissionsEvent();

  @override
  List<Object?> get props => [];
}

class PermissionCheckEvent extends PermissionsEvent {
  const PermissionCheckEvent(this.permission);

  final Permission permission;

  @override
  List<Object?> get props => [permission];
}

class PermissionRequestEvent extends PermissionsEvent {
  const PermissionRequestEvent(this.permission);

  final Permission permission;

  @override
  List<Object?> get props => [permission];
}
