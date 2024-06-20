import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_tally/domain/use_case/create_user_use_case.dart';
import 'package:trip_tally/domain/utils/failure.dart';
import 'package:trip_tally/domain/utils/success.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';

import '../../mocked_data.dart';
import '../../mocks.dart';
import '../../mocks.mocks.dart';

void main() {
  late MockAuthenticationRepo mockAuthenticationRepo;
  late CreateUserUseCase createUserUseCase;
  late MockUserCredential mockedUserCredential;

  setUp(() {
    mockAuthenticationRepo = MockAuthenticationRepo();
    createUserUseCase = CreateUserUseCase(mockAuthenticationRepo);
    mockedUserCredential = MockUserCredential();
  });

  test('CreateUserUseCase creates user success', () async {
    when(mockAuthenticationRepo.createUser(mockedCreateUserEntity))
        .thenAnswer((_) async => Right(mockedUserCredential));
    final result = await createUserUseCase.call(mockedCreateUserEntity);
    Success? success;
    result.fold((l) => null, (r) => success = r);
    expect(success, const Success());
    verify(mockAuthenticationRepo.createUser(mockedCreateUserEntity));
    verifyNoMoreInteractions(mockAuthenticationRepo);
  });

  test('CreateUserUseCase creates user failure', () async {
    when(mockAuthenticationRepo.createUser(mockedCreateUserEntity)).thenAnswer(
      (_) async => const Left(Failure(error: Errors.somethingWentWrong)),
    );
    final result = await createUserUseCase.call(mockedCreateUserEntity);
    Errors? error;
    result.fold((l) => error = l.error, (r) => null);
    expect(error, Errors.somethingWentWrong);
    verify(mockAuthenticationRepo.createUser(mockedCreateUserEntity));
    verifyNoMoreInteractions(mockAuthenticationRepo);
  });
}
