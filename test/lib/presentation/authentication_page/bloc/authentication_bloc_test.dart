import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_tally/domain/utils/failure.dart';
import 'package:trip_tally/domain/utils/success.dart';
import 'package:trip_tally/presentation/pages/authentication_page/bloc/authentication_bloc.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';

import '../../../../mocked_data.dart';
import '../../../../mocks.mocks.dart';

void main() {
  late MockLoginUseCase mockLoginUseCase;
  setUpAll(() {
    mockLoginUseCase = MockLoginUseCase();
  });

  AuthenticationBloc createBloc() => AuthenticationBloc(mockLoginUseCase);

  blocTest<AuthenticationBloc, AuthenticationState>(
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
    expect: () =>
    const [
      AuthenticationState.loading(),
      AuthenticationState.success(),
    ],
    verify: (_) {
      verify(mockLoginUseCase.call(mockedLoginEntity));
      verifyNoMoreInteractions(mockLoginUseCase);
    },
  );

  blocTest<AuthenticationBloc, AuthenticationState>(
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
    expect: () =>
    const [
      AuthenticationState.loading(),
      AuthenticationState.failure(Errors.somethingWentWrong),
    ],
    verify: (_) {
      verify(mockLoginUseCase.call(mockedLoginEntity));
      verifyNoMoreInteractions(mockLoginUseCase);
    },
  );
}
