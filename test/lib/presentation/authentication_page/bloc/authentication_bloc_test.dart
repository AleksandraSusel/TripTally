import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_tally/domain/utils/failure.dart';
import 'package:trip_tally/domain/utils/success.dart';
import 'package:trip_tally/presentation/pages/authentication_page/bloc/authentication_bloc.dart';
import 'package:trip_tally/presentation/pages/authentication_page/bloc/authentication_state.dart';
import 'package:trip_tally/presentation/utils/basic_state.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';

import '../../../../generate_mocks.mocks.dart';
import '../../../../mocked_data.dart';

void main() {
  late MockLoginUseCase mockLoginUseCase;
  late MockCreateAccountUseCase mockCreateAccountUseCase;
  setUpAll(() {
    mockLoginUseCase = MockLoginUseCase();
    mockCreateAccountUseCase = MockCreateAccountUseCase();
  });

  AuthenticationBloc createBloc() => AuthenticationBloc(mockLoginUseCase, mockCreateAccountUseCase);

  blocTest<AuthenticationBloc, BasicState<void>>(
    'OnTapLoginEvent logs the user success',
    setUp: () {
      when(mockLoginUseCase.call(mockedLoginEntity)).thenAnswer((_) async => const Right(Success()));
    },
    build: createBloc,
    act: (bloc) => bloc.add(
      OnTapLoginEvent(
        email: mockedLoginEntity.email,
        password: mockedLoginEntity.password,
      ),
    ),
    expect: () => [
      const LoadingState<void>(),
      const Logged(),
    ],
    verify: (_) {
      verify(mockLoginUseCase.call(mockedLoginEntity));
      verifyNoMoreInteractions(mockLoginUseCase);
    },
  );

  blocTest<AuthenticationBloc, BasicState<void>>(
    'OnTapRegisterEvent logs the user success',
    setUp: () {
      when(mockCreateAccountUseCase(any)).thenAnswer((_) async => const Right(Success()));
    },
    build: createBloc,
    act: (bloc) => bloc.add(
      OnTapRegisterEvent(
        email: mockedCreateAccountEntity.email,
        password: mockedCreateAccountEntity.password,
        repeatPassword: mockedCreateAccountEntity.password,
      ),
    ),
    expect: () => [
      const LoadingState<void>(),
      const Registered(),
    ],
    verify: (_) {
      verify(mockCreateAccountUseCase(any));
      verifyNoMoreInteractions(mockCreateAccountUseCase);
    },
  );

  blocTest<AuthenticationBloc, BasicState<void>>(
    'OnTapRegisterEvent logs the user failure',
    setUp: () {
      when(mockCreateAccountUseCase(any)).thenAnswer(
        (_) async => const Left(Failure(error: Errors.somethingWentWrong)),
      );
    },
    build: createBloc,
    act: (bloc) => bloc.add(
      OnTapRegisterEvent(
        email: mockedCreateAccountEntity.email,
        password: mockedCreateAccountEntity.password,
        repeatPassword: mockedCreateAccountEntity.password,
      ),
    ),
    expect: () => [
      const LoadingState<void>(),
      const FailureState<void>(Errors.somethingWentWrong),
    ],
    verify: (_) {
      verify(mockCreateAccountUseCase(any));
      verifyNoMoreInteractions(mockCreateAccountUseCase);
    },
  );

  blocTest<AuthenticationBloc, BasicState<void>>(
    'OnTapLoginEvent logs the user failure',
    setUp: () {
      when(mockLoginUseCase.call(mockedLoginEntity)).thenAnswer(
        (_) async => const Left(Failure(error: Errors.somethingWentWrong)),
      );
    },
    build: createBloc,
    act: (bloc) => bloc.add(
      OnTapLoginEvent(
        email: mockedLoginEntity.email,
        password: mockedLoginEntity.password,
      ),
    ),
    expect: () => [
      const LoadingState<void>(),
      const FailureState<void>(Errors.somethingWentWrong),
    ],
    verify: (_) {
      verify(mockLoginUseCase.call(mockedLoginEntity));
      verifyNoMoreInteractions(mockLoginUseCase);
    },
  );
}
