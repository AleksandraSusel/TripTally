import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';
import 'package:trip_tally/presentation/utils/permissions/permission_service.dart';

part 'permissions_event.dart';

part 'permissions_state.dart';

part 'permissions_bloc.freezed.dart';

@injectable
class PermissionsBloc extends Bloc<PermissionsEvent, PermissionsState> {
  PermissionsBloc(this._permissionsService) : super(const PermissionsState.loading()) {
    on<PermissionCheckEvent>(_onPermissionCheckEvent);
    on<PermissionRequestEvent>(_onPermissionRequestEvent);
  }

  final PermissionsService _permissionsService;

  FutureOr<void> _onPermissionCheckEvent(PermissionCheckEvent event, Emitter<PermissionsState> emit) async {
    _maybeEmitLoading(emit);
    try {
      final PermissionStatus status = await _permissionsService.status(event.permission);
      if (status.isGranted || status.isLimited) {
        emit(PermissionsState.loaded(status));
      } else {
        add(PermissionRequestEvent(event.permission));
      }
    } catch (e) {
      emit(const PermissionsState.error(Errors.somethingWrongPermissions));
    }
  }

  FutureOr<void> _onPermissionRequestEvent(PermissionRequestEvent event, Emitter<PermissionsState> emit) async {
    _maybeEmitLoading(emit);
    try {
      final PermissionStatus status = await _permissionsService.request(event.permission);
      if (status.isGranted || status.isLimited) {
        emit(PermissionsState.loaded(status));
      } else if (status.isPermanentlyDenied) {
        emit(const PermissionsState.permanentlyDenied());
      }
    } catch (e) {
      emit(const PermissionsState.error(Errors.somethingWrongPermissions));
    }
  }

  void _maybeEmitLoading(Emitter<PermissionsState> emit) {
    if (state != const PermissionsState.loading()) {
      emit(const PermissionsState.loading());
    }
  }
}
