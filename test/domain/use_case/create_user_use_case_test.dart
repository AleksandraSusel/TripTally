import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_tally/domain/use_case/create_account_use_case.dart';
import 'package:trip_tally/domain/utils/failure.dart';
import 'package:trip_tally/domain/utils/success.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';

import '../../mocked_data.dart';
import '../../mocks.mocks.dart';

void main() {
  late MockAuthenticationRepo mockAuthenticationRepo;
  late CreateAccountUseCase createAccountUseCase;

  setUp(() {
    mockAuthenticationRepo = MockAuthenticationRepo();
    createAccountUseCase = CreateAccountUseCase(mockAuthenticationRepo);
  });

  test('CreateAccountUseCase creates user success', () async {
    when(mockAuthenticationRepo.createAccount(mockedCreateAccountEntity)).thenAnswer((_) async => const Right(Success()));
    final result = await createAccountUseCase.call(mockedCreateAccountEntity);
    Success? success;
    result.fold((l) => null, (r) => success = r);
    expect(success, const Success());
    verify(mockAuthenticationRepo.createAccount(mockedCreateAccountEntity));
    verifyNoMoreInteractions(mockAuthenticationRepo);
  });

  test('CreateAccountUseCase creates user failure', () async {
    when(mockAuthenticationRepo.createAccount(mockedCreateAccountEntity))
        .thenAnswer((_) async => const Left(Failure(error: Errors.somethingWentWrong)));
    final result = await createAccountUseCase.call(mockedCreateAccountEntity);
    Errors? error;
    result.fold((l) => error = l.error, (r) => null);
    expect(error, Errors.somethingWentWrong);
    verify(mockAuthenticationRepo.createAccount(mockedCreateAccountEntity));
    verifyNoMoreInteractions(mockAuthenticationRepo);
  });
}
