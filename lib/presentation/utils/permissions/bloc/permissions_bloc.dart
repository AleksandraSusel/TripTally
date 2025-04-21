import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:trip_tally/presentation/utils/basic_state.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';
import 'package:trip_tally/presentation/utils/permissions/bloc/permissions_state.dart';
import 'package:trip_tally/presentation/utils/permissions/permission_service.dart';

part 'permissions_event.dart';

@injectable
class PermissionsBloc extends Bloc<PermissionsEvent, BasicState<PermissionStatus>> {
  PermissionsBloc(this._permissionsService) : super(const LoadingState()) {
    on<PermissionCheckEvent>(_onPermissionCheckEvent);
    on<PermissionRequestEvent>(_onPermissionRequestEvent);
  }

  final PermissionsService _permissionsService;

  FutureOr<void> _onPermissionCheckEvent(
    PermissionCheckEvent event,
    Emitter<BasicState<PermissionStatus>> emit,
  ) async {
    _maybeEmitLoading(emit);
    try {
      final PermissionStatus status = await _permissionsService.status(event.permission);
      if (status.isGranted || status.isLimited) {
        emit(LoadedState(data: status));
      } else {
        add(PermissionRequestEvent(event.permission));
      }
    } on Exception catch (_) {
      emit(const FailureState(Errors.somethingWrongPermissions));
    }
  }

  FutureOr<void> _onPermissionRequestEvent(
    PermissionRequestEvent event,
    Emitter<BasicState<PermissionStatus>> emit,
  ) async {
    _maybeEmitLoading(emit);
    try {
      final PermissionStatus status = await _permissionsService.request(event.permission);
      if (status.isGranted || status.isLimited) {
        emit(LoadedState(data: status));
      } else if (status.isPermanentlyDenied) {
        emit(const PermanentlyDenied());
      }
    } on Exception catch (_) {
      emit(const FailureState(Errors.somethingWrongPermissions));
    }
  }

  void _maybeEmitLoading(Emitter<BasicState<PermissionStatus>> emit) {
    if (state != const LoadingState<PermissionStatus>()) {
      emit(const LoadingState());
    }
  }
}
