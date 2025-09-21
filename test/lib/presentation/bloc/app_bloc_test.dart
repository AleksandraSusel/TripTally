import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_tally/domain/utils/success.dart';
import 'package:trip_tally/presentation/pages/bloc/app_bloc.dart';
import 'package:trip_tally/presentation/pages/bloc/app_state.dart';
import 'package:trip_tally/presentation/utils/basic_state.dart';

import '../../../generate_mocks.mocks.dart';
import '../../../mocked_data.dart';

void main() {
  late MockSharedPrefsUtils mockSharedPrefs;
  late MockSignOutUseCase mockSignOutUseCase;
  setUpAll(() {
    mockSharedPrefs = MockSharedPrefsUtils();
    mockSignOutUseCase = MockSignOutUseCase();
  });

  AppBloc createBloc() => AppBloc(mockSharedPrefs, mockSignOutUseCase);

  blocTest<AppBloc, BasicState<void>>(
    'InitializeAppEvent emit SuccessState() when there is a token',
    setUp: () => when(mockSharedPrefs.getToken).thenReturn(testToken),
    build: createBloc,
    act: (bloc) => bloc.add(const OnInitializeAppEvent()),
    verify: (_) {
      verify(mockSharedPrefs.getToken);
      verifyNoMoreInteractions(mockSharedPrefs);
    },
    expect: () => [const SuccessState<void>()],
  );

  blocTest<AppBloc, BasicState<void>>(
    'InitializeAppEvent emit ToLoginPage() when the token is null',
    setUp: () => when(mockSharedPrefs.getToken).thenReturn(null),
    build: createBloc,
    act: (bloc) => bloc.add(const OnInitializeAppEvent()),
    verify: (_) {
      verify(mockSharedPrefs.getToken);
      verifyNoMoreInteractions(mockSharedPrefs);
    },
    expect: () => [const ToLoginPage()],
  );

  blocTest<AppBloc, BasicState<void>>(
    'OnLogoutEvent emit ToLoginPage() when the logout is successful',
    setUp: () => when(mockSignOutUseCase()).thenAnswer((_) async => const Right(Success())),
    build: createBloc,
    act: (bloc) => bloc.add(const OnLogoutEvent()),
    expect: () => [const LoadingState<void>(), const ToLoginPage()],
  );
}
