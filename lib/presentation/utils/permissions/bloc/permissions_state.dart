import 'package:equatable/equatable.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:trip_tally/presentation/utils/basic_state.dart';

sealed class PermissionsState extends BasicState<PermissionStatus> with EquatableMixin {
  const PermissionsState();

  @override
  List<Object?> get props => [];
}

class PermanentlyDenied extends PermissionsState {
  const PermanentlyDenied();
}
