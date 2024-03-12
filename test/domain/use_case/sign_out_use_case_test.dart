import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_tally/domain/use_case/sign_out_use_case.dart';
import 'package:trip_tally/domain/utils/failure.dart';
import 'package:trip_tally/domain/utils/success.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';

import '../../mocks.mocks.dart';

void main() {
  late MockAuthenticationRepo mockAuthenticationRepo;
  late SignOutUseCase signOutUseCase;

  setUp(() {
    mockAuthenticationRepo = MockAuthenticationRepo();
    signOutUseCase = SignOutUseCase(mockAuthenticationRepo);
  });

  test('SignOutUseCase logs user out success', () async {
    when(mockAuthenticationRepo.signOut()).thenAnswer((_) async => const Right(Success()));
    final result = await signOutUseCase.call();
    Success? success;
    result.fold((l) => null, (r) => success = r);
    expect(success, const Success());
    verify(mockAuthenticationRepo.signOut());
    verifyNoMoreInteractions(mockAuthenticationRepo);
  });

  test('SignOutUseCase logs user out failure', () async {
    when(mockAuthenticationRepo.signOut()).thenAnswer((_) async => const Left(Failure(error: Errors.somethingWentWrong)));
    final result = await signOutUseCase.call();
    Errors? error;
    result.fold((l) => error = l.error, (r) => null);
    expect(error, Errors.somethingWentWrong);
    verify(mockAuthenticationRepo.signOut());
    verifyNoMoreInteractions(mockAuthenticationRepo);
  });
}
