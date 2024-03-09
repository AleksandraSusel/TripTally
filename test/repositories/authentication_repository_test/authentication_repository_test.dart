import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_tally/data/repositories/authentication_repo_impl.dart';
import 'package:trip_tally/domain/repositories/authentication_repo.dart';
import 'package:trip_tally/domain/utils/exception.dart';
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

  test('CreateUser creates user and catch ApiException', () async {
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
    when(mockedAuthenticationRemoteSource.createUser(any)).thenThrow(const Left(Errors.unknownError));
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
}
