import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_tally/data/data_source/authentication_remote_source_impl.dart';
import 'package:trip_tally/data/dto/user/create_account_dto.dart';
import 'package:trip_tally/data/dto/user/login_dto.dart';
import 'package:trip_tally/domain/data_source/authentication_remote_source.dart';
import 'package:trip_tally/domain/utils/exception.dart';
import 'package:trip_tally/domain/utils/success.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';

import '../../mocked_data.dart';
import '../../mocks.mocks.dart';

void main() {
  late AuthenticationRemoteSource authenticationDataSource;
  late MockApiClient mockApiClient;
  late MockSharedPrefsUtils mockSharedPrefsUtils;

  setUp(() {
    mockSharedPrefsUtils = MockSharedPrefsUtils();
    mockApiClient = MockApiClient();
    authenticationDataSource = AuthenticationRemoteSourceImpl(mockApiClient, mockSharedPrefsUtils);
  });

  test(
    'Login logs user successful',
    () async {
      final dto = LoginDto(
        email: mockedLoginDto.email,
        password: mockedLoginDto.password,
      );

      when(mockApiClient.login(any)).thenAnswer((_) async => testToken);
      when(mockSharedPrefsUtils.saveToken(testToken)).thenAnswer((_) async => const Success());

      final result = await authenticationDataSource.login(mockedLoginDto);

      expect(result, const Success());

      verify(mockApiClient.login(dto)).called(1);
      verify(mockSharedPrefsUtils.saveToken(testToken)).called(1);
      verifyNoMoreInteractions(mockSharedPrefsUtils);
      verifyNoMoreInteractions(mockApiClient);
    },
  );

  test(
    'Login throws ApiException on catch',
    () async {
      final dto = LoginDto(email: mockedLoginDto.email, password: mockedLoginDto.password);
      when(mockApiClient.login(any)).thenThrow(Exception());
      await expectLater(
        authenticationDataSource.login(dto),
        throwsA(
          isA<ApiException>().having((e) => e.failure, 'Something went wrong', Errors.somethingWentWrong),
        ),
      );
      verify(mockApiClient.login(dto));
      verifyNoMoreInteractions(mockApiClient);
    },
  );

  test(
    "CreateAccount creates new account successful",
    () async {
      final dto = CreateAccountDto(email: mockedCreateAccountDto.email, password: mockedCreateAccountDto.password);

      when(mockApiClient.createAccount(any)).thenAnswer((_) async => testToken);
      when(mockSharedPrefsUtils.saveToken(any)).thenAnswer((_) async => true);

      final result = await authenticationDataSource.createAccount(mockedCreateAccountDto);

      expect(result, const Success());

      verify(mockApiClient.createAccount(dto)).called(1);
      verify(mockSharedPrefsUtils.saveToken(testToken)).called(1);
      verifyNoMoreInteractions(mockSharedPrefsUtils);
      verifyNoMoreInteractions(mockApiClient);
    },
  );

  test(
    "CreateAccount throws ApiException on catch",
    () async {
      final dto = CreateAccountDto(email: mockedCreateAccountDto.email, password: mockedCreateAccountDto.password);
      when(mockApiClient.createAccount(any)).thenThrow(Exception());
      await expectLater(
        authenticationDataSource.createAccount(dto),
        throwsA(
          isA<ApiException>().having((e) => e.failure, 'Something went wrong', Errors.somethingWentWrong),
        ),
      );
      verify(mockApiClient.createAccount(dto));
      verifyNoMoreInteractions(mockApiClient);
    },
  );

  test(
    'SignOut remove users token success',
    () async {
      when(mockSharedPrefsUtils.removeToken).thenAnswer((_) async => true);
      final result = await authenticationDataSource.signOut();
      expect(result, const Success());
      verify(mockSharedPrefsUtils.removeToken);
      verifyNoMoreInteractions(mockSharedPrefsUtils);
    },
  );

  test(
    'SignOut remove users token throws ApiException on catch',
    () async {
      when(mockSharedPrefsUtils.removeToken).thenAnswer((_) async => false);
      await expectLater(
        authenticationDataSource.signOut(),
        throwsA(
          isA<ApiException>().having(
            (e) => e.failure,
            'Something went wrong',
            Errors.somethingWentWrong,
          ),
        ),
      );
      verify(mockSharedPrefsUtils.removeToken);
      verifyNoMoreInteractions(mockSharedPrefsUtils);
    },
  );
}
