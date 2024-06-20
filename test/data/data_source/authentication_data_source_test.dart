import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_tally/data/data_source/authentication_remote_source_impl.dart';
import 'package:trip_tally/data/dto/user/create_user_dto.dart';
import 'package:trip_tally/data/dto/user/login_dto.dart';
import 'package:trip_tally/domain/data_source/authentication_remote_source.dart';
import 'package:trip_tally/domain/utils/exception.dart';
import 'package:trip_tally/domain/utils/success.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';

import '../../mocked_data.dart';
import '../../mocks.dart';
import '../../mocks.mocks.dart';

void main() {
  late MockFirebaseAuth mockFirebaseAuth;
  late AuthenticationRemoteSource authenticationDataSource;
  late UserCredential mockUserCredential;
  late User mockedUser;

  setUp(() {
    mockFirebaseAuth = MockFirebaseAuth();
    authenticationDataSource = AuthenticationRemoteSourceImpl(mockFirebaseAuth);
    mockedUser = MockUser(uid: '111');
    mockUserCredential = MockUserCredential(user: mockedUser);
  });
  test(
    'CreateUser creates user successful',
    () async {
      final dto = CreateUserDto(
        email: mockedCreateUserDto.email,
        password: mockedCreateUserDto.password,
      );

      when(
        mockFirebaseAuth.createUserWithEmailAndPassword(
          email: dto.email,
          password: dto.password,
        ),
      ).thenAnswer((_) async => mockUserCredential);

      final result = await authenticationDataSource.createUser(mockedCreateUserDto);

      expect(result, mockUserCredential);

      verify(
        mockFirebaseAuth.createUserWithEmailAndPassword(
          email: mockedCreateUserDto.email,
          password: mockedCreateUserDto.password,
        ),
      );
      verifyNoMoreInteractions(mockFirebaseAuth);
    },
  );

  test(
    'CreateUser throws FirebaseAuthException',
    () async {
      final dto = CreateUserDto(
        email: mockedCreateUserDto.email,
        password: mockedCreateUserDto.password,
      );

      when(
        mockFirebaseAuth.createUserWithEmailAndPassword(
          email: mockedCreateUserDto.email,
          password: mockedCreateUserDto.password,
        ),
      ).thenThrow(MockFirebaseException('weak-password'));

      await expectLater(
        authenticationDataSource.createUser(dto),
        throwsA(
          isA<ApiException>().having((e) => e.failure, 'error', Errors.weakPassword),
        ),
      );
      verify(
        mockFirebaseAuth.createUserWithEmailAndPassword(
          email: mockedCreateUserDto.email,
          password: mockedCreateUserDto.password,
        ),
      );
      verifyNoMoreInteractions(mockFirebaseAuth);
    },
  );

  test(
    'CreateUser throws ApiException on catch',
    () async {
      final dto = CreateUserDto(
        email: mockedCreateUserDto.email,
        password: mockedCreateUserDto.password,
      );
      when(
        mockFirebaseAuth.createUserWithEmailAndPassword(
          email: mockedCreateUserDto.email,
          password: mockedCreateUserDto.password,
        ),
      ).thenThrow(Exception());

      await expectLater(
        authenticationDataSource.createUser(dto),
        throwsA(
          isA<ApiException>().having((e) => e.failure, 'Unknown Error', Errors.unknownError),
        ),
      );

      verify(
        mockFirebaseAuth.createUserWithEmailAndPassword(
          email: mockedCreateUserDto.email,
          password: mockedCreateUserDto.password,
        ),
      );
      verifyNoMoreInteractions(mockFirebaseAuth);
    },
  );

  test(
    'Login logs user successful',
    () async {
      final dto = LoginDto(
        email: mockedLoginDto.email,
        password: mockedLoginDto.password,
      );

      when(
        mockFirebaseAuth.signInWithEmailAndPassword(
          email: dto.email,
          password: dto.password,
        ),
      ).thenAnswer((_) async => mockUserCredential);

      final result = await authenticationDataSource.login(mockedLoginDto);

      expect(result, const Success());

      verify(
        mockFirebaseAuth.signInWithEmailAndPassword(
          email: mockedLoginDto.email,
          password: mockedLoginDto.password,
        ),
      );
      verifyNoMoreInteractions(mockFirebaseAuth);
    },
  );

  test(
    'Login throws ApiException on catch',
    () async {
      final dto = LoginDto(
        email: mockedLoginDto.email,
        password: mockedLoginDto.password,
      );
      when(
        mockFirebaseAuth.signInWithEmailAndPassword(
          email: dto.email,
          password: dto.password,
        ),
      ).thenThrow(Exception());
      await expectLater(
        authenticationDataSource.login(dto),
        throwsA(
          isA<ApiException>().having((e) => e.failure, 'Unknown Error', Errors.unknownError),
        ),
      );

      verify(
        mockFirebaseAuth.signInWithEmailAndPassword(
          email: mockedLoginDto.email,
          password: mockedLoginDto.password,
        ),
      );
      verifyNoMoreInteractions(mockFirebaseAuth);
    },
  );

  test(
    'Login throws FirebaseException',
    () async {
      final dto = LoginDto(
        email: mockedLoginDto.email,
        password: mockedLoginDto.password,
      );
      when(
        mockFirebaseAuth.signInWithEmailAndPassword(
          email: dto.email,
          password: dto.password,
        ),
      ).thenThrow(MockFirebaseException('invalid-email'));
      await expectLater(
        authenticationDataSource.login(dto),
        throwsA(
          isA<ApiException>().having((e) => e.failure, 'Invalid Email', Errors.invalidEmail),
        ),
      );

      verify(
        mockFirebaseAuth.signInWithEmailAndPassword(
          email: mockedLoginDto.email,
          password: mockedLoginDto.password,
        ),
      );
      verifyNoMoreInteractions(mockFirebaseAuth);
    },
  );

  test(
    'SignOut logs user out success',
    () async {
      when(mockFirebaseAuth.signOut()).thenAnswer((_) async => const Success());
      final result = await authenticationDataSource.signOut();
      expect(result, const Success());
      verify(mockFirebaseAuth.signOut());
      verifyNoMoreInteractions(mockFirebaseAuth);
    },
  );

  test(
    'SignOut throws ApiException on catch',
    () async {
      when(mockFirebaseAuth.signOut()).thenThrow(Exception());
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
      verify(mockFirebaseAuth.signOut());
      verifyNoMoreInteractions(mockFirebaseAuth);
    },
  );
}
