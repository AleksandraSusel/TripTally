import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_tally/data/repositories/authentication_repo_impl.dart';
import 'package:trip_tally/domain/repositories/authentication_repo.dart';
import 'package:trip_tally/domain/utils/exception.dart';
import 'package:trip_tally/domain/utils/failure.dart';
import 'package:trip_tally/domain/utils/success.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';

import '../../mocked_data.dart';
import '../../mocks.dart';
import '../../mocks.mocks.dart';

void main() {
  late MockAuthenticationRemoteSource mockedAuthenticationRemoteSource;
  late AuthenticationRepo repository;
  late MockUserCredential mockedUserCredential;

  setUpAll(() {
    mockedAuthenticationRemoteSource = MockAuthenticationRemoteSource();
    repository = AuthenticationRepoImpl(mockedAuthenticationRemoteSource);
    mockedUserCredential = MockUserCredential();
  });
  test('CreateUser creates user success', () async {
    when(mockedAuthenticationRemoteSource.createUser(any)).thenAnswer((_) async => mockedUserCredential);
    final result = await repository.createUser(mockedCreateUserEntity);
    UserCredential? actualCredential;
    result.fold(
      (l) => null,
      (r) => actualCredential = r,
    );
    expect(actualCredential, mockedUserCredential);
    verify(mockedAuthenticationRemoteSource.createUser(mockedCreateUserDto));
    verifyNoMoreInteractions(mockedAuthenticationRemoteSource);
  });

  test('CreateUser creates user with catch ApiException', () async {
    when(mockedAuthenticationRemoteSource.createUser(any)).thenThrow(ApiException(Errors.emailInUse));
    final result = await repository.createUser(mockedCreateUserEntity);
    Errors? failure;
    result.fold(
      (l) => failure = l.error,
      (r) => null,
    );
    expect(failure, Errors.emailInUse);
    verify(mockedAuthenticationRemoteSource.createUser(mockedCreateUserDto));
    verifyNoMoreInteractions(mockedAuthenticationRemoteSource);
  });

  test('CreateUser creates user failure', () async {
    when(mockedAuthenticationRemoteSource.createUser(any)).thenThrow(const Left<Errors, dynamic>(Errors.unknownError));
    final result = await repository.createUser(mockedCreateUserEntity);
    Errors? failure;
    result.fold(
      (l) => failure = l.error,
      (r) => null,
    );
    expect(failure, Errors.unknownError);
    verify(mockedAuthenticationRemoteSource.createUser(mockedCreateUserDto));
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

  test('Login logs user failure', () async {
    when(mockedAuthenticationRemoteSource.login(any))
        .thenThrow(const Left<Failure, dynamic>(Failure(error: Errors.unknownError)));
    final result = await repository.login(mockedLoginEntity);
    Errors? error;
    result.fold((l) => error = l.error, (r) => null);
    expect(error, Errors.unknownError);
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

  test('SignOut logs user out success', () async {
    when(mockedAuthenticationRemoteSource.signOut()).thenAnswer((_) async => const Success());
    final result = await repository.signOut();
    Success? success;
    result.fold((l) => null, (r) => success = r);
    expect(success, const Success());
    verify(mockedAuthenticationRemoteSource.signOut());
    verifyNoMoreInteractions(mockedAuthenticationRemoteSource);
  });

  test('SignOut logs user out failure', () async {
    when(mockedAuthenticationRemoteSource.signOut())
        .thenThrow(const Left<Failure, dynamic>(Failure(error: Errors.somethingWentWrong)));
    final result = await repository.signOut();
    Errors? error;
    result.fold((l) => error = l.error, (r) => null);
    expect(error, Errors.somethingWentWrong);
    verify(mockedAuthenticationRemoteSource.signOut());
    verifyNoMoreInteractions(mockedAuthenticationRemoteSource);
  });
}
