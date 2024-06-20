import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_tally/domain/utils/failure.dart';
import 'package:trip_tally/domain/utils/success.dart';
import 'package:trip_tally/presentation/pages/login_page/bloc/login_bloc.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';

import '../../../../mocked_data.dart';
import '../../../../mocks.mocks.dart';

void main() {
  late MockLoginUseCase mockLoginUseCase;
  setUpAll(() {
    mockLoginUseCase = MockLoginUseCase();
  });

  LoginBloc createBloc() => LoginBloc(mockLoginUseCase);

  blocTest<LoginBloc, LoginState>(
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
    expect: () => const [
      LoginState.loading(),
      LoginState.success(),
    ],
    verify: (_) {
      verify(mockLoginUseCase.call(mockedLoginEntity));
      verifyNoMoreInteractions(mockLoginUseCase);
    },
  );

  blocTest<LoginBloc, LoginState>(
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
    expect: () => const [
      LoginState.loading(),
      LoginState.failure(Errors.somethingWentWrong),
    ],
    verify: (_) {
      verify(mockLoginUseCase.call(mockedLoginEntity));
      verifyNoMoreInteractions(mockLoginUseCase);
    },
  );
}
