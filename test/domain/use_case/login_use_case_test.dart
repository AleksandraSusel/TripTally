import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_tally/domain/use_case/login_use_case.dart';
import 'package:trip_tally/domain/utils/failure.dart';
import 'package:trip_tally/domain/utils/success.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';

import '../../generate_mocks.mocks.dart';
import '../../mocked_data.dart';

void main() {
  late MockAuthenticationRepo mockAuthenticationRepo;
  late LoginUseCase loginUseCase;

  setUp(() {
    mockAuthenticationRepo = MockAuthenticationRepo();
    loginUseCase = LoginUseCase(mockAuthenticationRepo);
  });

  test('LoginUserUseCase logs the user success', () async {
    when(mockAuthenticationRepo.login(mockedLoginEntity)).thenAnswer((_) async => const Right(Success()));
    final result = await loginUseCase.call(mockedLoginEntity);
    Success? success;
    result.fold((l) => null, (r) => success = r);
    expect(success, const Success());
    verify(mockAuthenticationRepo.login(mockedLoginEntity));
    verifyNoMoreInteractions(mockAuthenticationRepo);
  });

  test('LoginUserUseCase logs the user failure', () async {
    when(mockAuthenticationRepo.login(mockedLoginEntity)).thenAnswer(
      (_) async => const Left(Failure(error: Errors.somethingWentWrong)),
    );
    final result = await loginUseCase.call(mockedLoginEntity);
    Errors? error;
    result.fold((l) => error = l.error, (r) => null);
    expect(error, Errors.somethingWentWrong);
    verify(mockAuthenticationRepo.login(mockedLoginEntity));
    verifyNoMoreInteractions(mockAuthenticationRepo);
  });
}
