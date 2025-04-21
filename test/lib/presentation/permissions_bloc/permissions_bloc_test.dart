import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:trip_tally/presentation/utils/basic_state.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';
import 'package:trip_tally/presentation/utils/permissions/bloc/permissions_bloc.dart';
import 'package:trip_tally/presentation/utils/permissions/bloc/permissions_state.dart';

import '../../../generate_mocks.mocks.dart';

void main() {
  group('PermissionsBloc', () {
    late MockPermissionsService mockPermissionsService;

    setUp(() {
      mockPermissionsService = MockPermissionsService();
    });

    PermissionsBloc permissionsBloc() => PermissionsBloc(mockPermissionsService);

    void setupMockPermissionStatus(Permission permission, PermissionStatus status) {
      when(mockPermissionsService.status(permission)).thenAnswer((_) async => status);
    }

    void setupMockPermissionRequest(Permission permission, PermissionStatus status) {
      when(mockPermissionsService.request(permission)).thenAnswer((_) async => status);
    }

    blocTest<PermissionsBloc, BasicState<PermissionStatus>>(
      'emits [loading, loaded] when permission is already granted',
      setUp: () => setupMockPermissionStatus(Permission.camera, PermissionStatus.granted),
      build: permissionsBloc,
      act: (bloc) => bloc.add(const PermissionCheckEvent(Permission.camera)),
      expect: () => [
        const LoadedState<PermissionStatus>(data: PermissionStatus.granted),
      ],
      verify: (_) {
        verify(mockPermissionsService.status(Permission.camera)).called(1);
      },
    );

    blocTest<PermissionsBloc, BasicState<PermissionStatus>>(
      'emits [loading, loaded] when permission is limited',
      setUp: () => setupMockPermissionStatus(Permission.camera, PermissionStatus.limited),
      build: permissionsBloc,
      act: (bloc) => bloc.add(const PermissionCheckEvent(Permission.camera)),
      expect: () => [
        const LoadedState<PermissionStatus>(data: PermissionStatus.limited),
      ],
      verify: (_) {
        verify(mockPermissionsService.status(Permission.camera)).called(1);
      },
    );

    blocTest<PermissionsBloc, BasicState<PermissionStatus>>(
      'emits [loading, loading, loaded] when permission is requested and granted',
      setUp: () {
        setupMockPermissionStatus(Permission.camera, PermissionStatus.denied);
        setupMockPermissionRequest(Permission.camera, PermissionStatus.granted);
      },
      build: permissionsBloc,
      act: (bloc) => bloc.add(const PermissionCheckEvent(Permission.camera)),
      expect: () => [
        const LoadedState<PermissionStatus>(data: PermissionStatus.granted),
      ],
      verify: (_) {
        verify(mockPermissionsService.status(Permission.camera)).called(1);
        verify(mockPermissionsService.request(Permission.camera)).called(1);
      },
    );

    blocTest<PermissionsBloc, BasicState<PermissionStatus>>(
      'emits [loading, loading, permanentlyDenied] when permission is permanently denied',
      setUp: () {
        setupMockPermissionStatus(Permission.camera, PermissionStatus.denied);
        setupMockPermissionRequest(Permission.camera, PermissionStatus.permanentlyDenied);
      },
      build: permissionsBloc,
      act: (bloc) => bloc.add(const PermissionCheckEvent(Permission.camera)),
      expect: () => [
        const PermanentlyDenied(),
      ],
      verify: (_) {
        verify(mockPermissionsService.status(Permission.camera)).called(1);
        verify(mockPermissionsService.request(Permission.camera)).called(1);
      },
    );

    blocTest<PermissionsBloc, BasicState<PermissionStatus>>(
      'emits [loading, error] when there is an exception during permission check',
      setUp: () {
        when(mockPermissionsService.status(Permission.camera)).thenThrow(Exception());
      },
      build: permissionsBloc,
      act: (bloc) => bloc.add(const PermissionCheckEvent(Permission.camera)),
      expect: () => [
        const FailureState<PermissionStatus>(Errors.somethingWrongPermissions),
      ],
      verify: (_) {
        verify(mockPermissionsService.status(Permission.camera)).called(1);
      },
    );

    blocTest<PermissionsBloc, BasicState<PermissionStatus>>(
      'emits [loading, error] when there is an exception during permission request',
      setUp: () {
        setupMockPermissionStatus(Permission.camera, PermissionStatus.denied);
        when(mockPermissionsService.request(Permission.camera)).thenThrow(Exception());
      },
      build: permissionsBloc,
      act: (bloc) => bloc.add(const PermissionCheckEvent(Permission.camera)),
      expect: () => [
        const FailureState<PermissionStatus>(Errors.somethingWrongPermissions),
      ],
      verify: (_) {
        verify(mockPermissionsService.status(Permission.camera)).called(1);
        verify(mockPermissionsService.request(Permission.camera)).called(1);
      },
    );
  });
}
