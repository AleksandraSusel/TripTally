import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_tally/data/repositories/authentication_repo_impl.dart';
import 'package:trip_tally/domain/repositories/authentication_repo.dart';
import 'package:trip_tally/domain/utils/exception.dart';
import 'package:trip_tally/domain/utils/success.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';

import '../../mocked_data.dart';
import '../../mocks.mocks.dart';

void main() {
  late MockAuthenticationRemoteSource mockedAuthenticationRemoteSource;
  late AuthenticationRepo repository;

  setUpAll(() {
    mockedAuthenticationRemoteSource = MockAuthenticationRemoteSource();
    repository = AuthenticationRepoImpl(mockedAuthenticationRemoteSource);
  });
  test('CreateAccount creates user success', () async {
    when(mockedAuthenticationRemoteSource.createAccount(any)).thenAnswer((_) async => const Success());
    final result = await repository.createAccount(mockedCreateAccountEntity);
    Success? success;
    result.fold(
      (l) => null,
      (r) => success = r,
    );
    expect(success, const Success());
    verify(mockedAuthenticationRemoteSource.createAccount(mockedCreateAccountDto));
    verifyNoMoreInteractions(mockedAuthenticationRemoteSource);
  });

  test('CreateAccount creates user with catch ApiException', () async {
    when(mockedAuthenticationRemoteSource.createAccount(any)).thenThrow(ApiException(Errors.emailInUse));
    final result = await repository.createAccount(mockedCreateAccountEntity);
    Errors? failure;
    result.fold(
      (l) => failure = l.error,
      (r) => null,
    );
    expect(failure, Errors.emailInUse);
    verify(mockedAuthenticationRemoteSource.createAccount(mockedCreateAccountDto));
    verifyNoMoreInteractions(mockedAuthenticationRemoteSource);
  });

  test('Login logs user success', () async {
    when(mockedAuthenticationRemoteSource.login(any)).thenAnswer((_) async => const Success());
    final result = await repository.login(mockedLoginEntity);
    Success? success;
    result.fold((l) => null, (r) => success = r);
    expect(success, const Success());
    verify(mockedAuthenticationRemoteSource.login(mockedLoginDto));
    verifyNoMoreInteractions(mockedAuthenticationRemoteSource);
  });

  test('Login logs user with catch ApiException', () async {
    when(mockedAuthenticationRemoteSource.login(any)).thenThrow(ApiException(Errors.somethingWentWrong));
    final result = await repository.login(mockedLoginEntity);
    Errors? error;
    result.fold((l) => error = l.error, (r) => null);
    expect(error, Errors.somethingWentWrong);
    verify(mockedAuthenticationRemoteSource.login(mockedLoginDto));
    verifyNoMoreInteractions(mockedAuthenticationRemoteSource);
  });

  // test('SignOut logs user out success', () async {
  //   when(mockedAuthenticationRemoteSource.signOut()).thenAnswer((_) async => const Success());
  //   final result = await repository.signOut();
  //   Success? success;
  //   result.fold((l) => null, (r) => success = r);
  //   expect(success, const Success());
  //   verify(mockedAuthenticationRemoteSource.signOut());
  //   verifyNoMoreInteractions(mockedAuthenticationRemoteSource);
  // });
  //
  // test('SignOut logs user out failure', () async {
  //   when(mockedAuthenticationRemoteSource.signOut())
        .thenThrow(const Left<Failure, dynamic>(Failure(error: Errors.somethingWentWrong)));
  //   final result = await repository.signOut();
  //   Errors? error;
  //   result.fold((l) => error = l.error, (r) => null);
  //   expect(error, Errors.somethingWentWrong);
  //   verify(mockedAuthenticationRemoteSource.signOut());
  //   verifyNoMoreInteractions(mockedAuthenticationRemoteSource);
  // });
}
