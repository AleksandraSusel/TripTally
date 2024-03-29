// Mocks generated by Mockito 5.4.4 from annotations
// in trip_tally/test/mocks.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i9;

import 'package:dartz/dartz.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:firebase_auth_platform_interface/firebase_auth_platform_interface.dart'
    as _i3;
import 'package:firebase_core/firebase_core.dart' as _i2;
import 'package:flutter_bloc/flutter_bloc.dart' as _i20;
import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i10;
import 'package:trip_tally/data/dto/user/create_user_dto.dart' as _i16;
import 'package:trip_tally/data/dto/user/login_dto.dart' as _i17;
import 'package:trip_tally/domain/data_source/authentication_remote_source.dart'
    as _i15;
import 'package:trip_tally/domain/entities/user/create_user_entity.dart'
    as _i13;
import 'package:trip_tally/domain/entities/user/login_entity.dart' as _i14;
import 'package:trip_tally/domain/repositories/authentication_repo.dart'
    as _i11;
import 'package:trip_tally/domain/use_case/create_user_use_case.dart' as _i18;
import 'package:trip_tally/domain/use_case/login_use_case.dart' as _i19;
import 'package:trip_tally/domain/utils/failure.dart' as _i12;
import 'package:trip_tally/domain/utils/success.dart' as _i6;
import 'package:trip_tally/presentation/pages/login_page/bloc/login_bloc.dart'
    as _i8;
import 'package:trip_tally/presentation/pages/registration_page/bloc/registration_bloc.dart'
    as _i7;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeFirebaseApp_0 extends _i1.SmartFake implements _i2.FirebaseApp {
  _FakeFirebaseApp_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeActionCodeInfo_1 extends _i1.SmartFake
    implements _i3.ActionCodeInfo {
  _FakeActionCodeInfo_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeUserCredential_2 extends _i1.SmartFake
    implements _i4.UserCredential {
  _FakeUserCredential_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeConfirmationResult_3 extends _i1.SmartFake
    implements _i4.ConfirmationResult {
  _FakeConfirmationResult_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeEither_4<L, R> extends _i1.SmartFake implements _i5.Either<L, R> {
  _FakeEither_4(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeSuccess_5 extends _i1.SmartFake implements _i6.Success {
  _FakeSuccess_5(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeRegistrationState_6 extends _i1.SmartFake
    implements _i7.RegistrationState {
  _FakeRegistrationState_6(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeLoginState_7 extends _i1.SmartFake implements _i8.LoginState {
  _FakeLoginState_7(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [FirebaseAuth].
///
/// See the documentation for Mockito's code generation for more information.
class MockFirebaseAuth extends _i1.Mock implements _i4.FirebaseAuth {
  MockFirebaseAuth() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.FirebaseApp get app => (super.noSuchMethod(
        Invocation.getter(#app),
        returnValue: _FakeFirebaseApp_0(
          this,
          Invocation.getter(#app),
        ),
      ) as _i2.FirebaseApp);

  @override
  set app(_i2.FirebaseApp? _app) => super.noSuchMethod(
        Invocation.setter(
          #app,
          _app,
        ),
        returnValueForMissingStub: null,
      );

  @override
  set tenantId(String? tenantId) => super.noSuchMethod(
        Invocation.setter(
          #tenantId,
          tenantId,
        ),
        returnValueForMissingStub: null,
      );

  @override
  Map<dynamic, dynamic> get pluginConstants => (super.noSuchMethod(
        Invocation.getter(#pluginConstants),
        returnValue: <dynamic, dynamic>{},
      ) as Map<dynamic, dynamic>);

  @override
  _i9.Future<void> useEmulator(String? origin) => (super.noSuchMethod(
        Invocation.method(
          #useEmulator,
          [origin],
        ),
        returnValue: _i9.Future<void>.value(),
        returnValueForMissingStub: _i9.Future<void>.value(),
      ) as _i9.Future<void>);

  @override
  _i9.Future<void> useAuthEmulator(
    String? host,
    int? port, {
    bool? automaticHostMapping = true,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #useAuthEmulator,
          [
            host,
            port,
          ],
          {#automaticHostMapping: automaticHostMapping},
        ),
        returnValue: _i9.Future<void>.value(),
        returnValueForMissingStub: _i9.Future<void>.value(),
      ) as _i9.Future<void>);

  @override
  _i9.Future<void> applyActionCode(String? code) => (super.noSuchMethod(
        Invocation.method(
          #applyActionCode,
          [code],
        ),
        returnValue: _i9.Future<void>.value(),
        returnValueForMissingStub: _i9.Future<void>.value(),
      ) as _i9.Future<void>);

  @override
  _i9.Future<_i3.ActionCodeInfo> checkActionCode(String? code) =>
      (super.noSuchMethod(
        Invocation.method(
          #checkActionCode,
          [code],
        ),
        returnValue: _i9.Future<_i3.ActionCodeInfo>.value(_FakeActionCodeInfo_1(
          this,
          Invocation.method(
            #checkActionCode,
            [code],
          ),
        )),
      ) as _i9.Future<_i3.ActionCodeInfo>);

  @override
  _i9.Future<void> confirmPasswordReset({
    required String? code,
    required String? newPassword,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #confirmPasswordReset,
          [],
          {
            #code: code,
            #newPassword: newPassword,
          },
        ),
        returnValue: _i9.Future<void>.value(),
        returnValueForMissingStub: _i9.Future<void>.value(),
      ) as _i9.Future<void>);

  @override
  _i9.Future<_i4.UserCredential> createUserWithEmailAndPassword({
    required String? email,
    required String? password,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #createUserWithEmailAndPassword,
          [],
          {
            #email: email,
            #password: password,
          },
        ),
        returnValue: _i9.Future<_i4.UserCredential>.value(_FakeUserCredential_2(
          this,
          Invocation.method(
            #createUserWithEmailAndPassword,
            [],
            {
              #email: email,
              #password: password,
            },
          ),
        )),
      ) as _i9.Future<_i4.UserCredential>);

  @override
  _i9.Future<List<String>> fetchSignInMethodsForEmail(String? email) =>
      (super.noSuchMethod(
        Invocation.method(
          #fetchSignInMethodsForEmail,
          [email],
        ),
        returnValue: _i9.Future<List<String>>.value(<String>[]),
      ) as _i9.Future<List<String>>);

  @override
  _i9.Future<_i4.UserCredential> getRedirectResult() => (super.noSuchMethod(
        Invocation.method(
          #getRedirectResult,
          [],
        ),
        returnValue: _i9.Future<_i4.UserCredential>.value(_FakeUserCredential_2(
          this,
          Invocation.method(
            #getRedirectResult,
            [],
          ),
        )),
      ) as _i9.Future<_i4.UserCredential>);

  @override
  bool isSignInWithEmailLink(String? emailLink) => (super.noSuchMethod(
        Invocation.method(
          #isSignInWithEmailLink,
          [emailLink],
        ),
        returnValue: false,
      ) as bool);

  @override
  _i9.Stream<_i4.User?> authStateChanges() => (super.noSuchMethod(
        Invocation.method(
          #authStateChanges,
          [],
        ),
        returnValue: _i9.Stream<_i4.User?>.empty(),
      ) as _i9.Stream<_i4.User?>);

  @override
  _i9.Stream<_i4.User?> idTokenChanges() => (super.noSuchMethod(
        Invocation.method(
          #idTokenChanges,
          [],
        ),
        returnValue: _i9.Stream<_i4.User?>.empty(),
      ) as _i9.Stream<_i4.User?>);

  @override
  _i9.Stream<_i4.User?> userChanges() => (super.noSuchMethod(
        Invocation.method(
          #userChanges,
          [],
        ),
        returnValue: _i9.Stream<_i4.User?>.empty(),
      ) as _i9.Stream<_i4.User?>);

  @override
  _i9.Future<void> sendPasswordResetEmail({
    required String? email,
    _i3.ActionCodeSettings? actionCodeSettings,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #sendPasswordResetEmail,
          [],
          {
            #email: email,
            #actionCodeSettings: actionCodeSettings,
          },
        ),
        returnValue: _i9.Future<void>.value(),
        returnValueForMissingStub: _i9.Future<void>.value(),
      ) as _i9.Future<void>);

  @override
  _i9.Future<void> sendSignInLinkToEmail({
    required String? email,
    required _i3.ActionCodeSettings? actionCodeSettings,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #sendSignInLinkToEmail,
          [],
          {
            #email: email,
            #actionCodeSettings: actionCodeSettings,
          },
        ),
        returnValue: _i9.Future<void>.value(),
        returnValueForMissingStub: _i9.Future<void>.value(),
      ) as _i9.Future<void>);

  @override
  _i9.Future<void> setLanguageCode(String? languageCode) => (super.noSuchMethod(
        Invocation.method(
          #setLanguageCode,
          [languageCode],
        ),
        returnValue: _i9.Future<void>.value(),
        returnValueForMissingStub: _i9.Future<void>.value(),
      ) as _i9.Future<void>);

  @override
  _i9.Future<void> setSettings({
    bool? appVerificationDisabledForTesting = false,
    String? userAccessGroup,
    String? phoneNumber,
    String? smsCode,
    bool? forceRecaptchaFlow,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #setSettings,
          [],
          {
            #appVerificationDisabledForTesting:
                appVerificationDisabledForTesting,
            #userAccessGroup: userAccessGroup,
            #phoneNumber: phoneNumber,
            #smsCode: smsCode,
            #forceRecaptchaFlow: forceRecaptchaFlow,
          },
        ),
        returnValue: _i9.Future<void>.value(),
        returnValueForMissingStub: _i9.Future<void>.value(),
      ) as _i9.Future<void>);

  @override
  _i9.Future<void> setPersistence(_i3.Persistence? persistence) =>
      (super.noSuchMethod(
        Invocation.method(
          #setPersistence,
          [persistence],
        ),
        returnValue: _i9.Future<void>.value(),
        returnValueForMissingStub: _i9.Future<void>.value(),
      ) as _i9.Future<void>);

  @override
  _i9.Future<_i4.UserCredential> signInAnonymously() => (super.noSuchMethod(
        Invocation.method(
          #signInAnonymously,
          [],
        ),
        returnValue: _i9.Future<_i4.UserCredential>.value(_FakeUserCredential_2(
          this,
          Invocation.method(
            #signInAnonymously,
            [],
          ),
        )),
      ) as _i9.Future<_i4.UserCredential>);

  @override
  _i9.Future<_i4.UserCredential> signInWithCredential(
          _i3.AuthCredential? credential) =>
      (super.noSuchMethod(
        Invocation.method(
          #signInWithCredential,
          [credential],
        ),
        returnValue: _i9.Future<_i4.UserCredential>.value(_FakeUserCredential_2(
          this,
          Invocation.method(
            #signInWithCredential,
            [credential],
          ),
        )),
      ) as _i9.Future<_i4.UserCredential>);

  @override
  _i9.Future<_i4.UserCredential> signInWithCustomToken(String? token) =>
      (super.noSuchMethod(
        Invocation.method(
          #signInWithCustomToken,
          [token],
        ),
        returnValue: _i9.Future<_i4.UserCredential>.value(_FakeUserCredential_2(
          this,
          Invocation.method(
            #signInWithCustomToken,
            [token],
          ),
        )),
      ) as _i9.Future<_i4.UserCredential>);

  @override
  _i9.Future<_i4.UserCredential> signInWithEmailAndPassword({
    required String? email,
    required String? password,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #signInWithEmailAndPassword,
          [],
          {
            #email: email,
            #password: password,
          },
        ),
        returnValue: _i9.Future<_i4.UserCredential>.value(_FakeUserCredential_2(
          this,
          Invocation.method(
            #signInWithEmailAndPassword,
            [],
            {
              #email: email,
              #password: password,
            },
          ),
        )),
      ) as _i9.Future<_i4.UserCredential>);

  @override
  _i9.Future<_i4.UserCredential> signInWithEmailLink({
    required String? email,
    required String? emailLink,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #signInWithEmailLink,
          [],
          {
            #email: email,
            #emailLink: emailLink,
          },
        ),
        returnValue: _i9.Future<_i4.UserCredential>.value(_FakeUserCredential_2(
          this,
          Invocation.method(
            #signInWithEmailLink,
            [],
            {
              #email: email,
              #emailLink: emailLink,
            },
          ),
        )),
      ) as _i9.Future<_i4.UserCredential>);

  @override
  _i9.Future<_i4.UserCredential> signInWithAuthProvider(
          _i3.AuthProvider? provider) =>
      (super.noSuchMethod(
        Invocation.method(
          #signInWithAuthProvider,
          [provider],
        ),
        returnValue: _i9.Future<_i4.UserCredential>.value(_FakeUserCredential_2(
          this,
          Invocation.method(
            #signInWithAuthProvider,
            [provider],
          ),
        )),
      ) as _i9.Future<_i4.UserCredential>);

  @override
  _i9.Future<_i4.UserCredential> signInWithProvider(
          _i3.AuthProvider? provider) =>
      (super.noSuchMethod(
        Invocation.method(
          #signInWithProvider,
          [provider],
        ),
        returnValue: _i9.Future<_i4.UserCredential>.value(_FakeUserCredential_2(
          this,
          Invocation.method(
            #signInWithProvider,
            [provider],
          ),
        )),
      ) as _i9.Future<_i4.UserCredential>);

  @override
  _i9.Future<_i4.ConfirmationResult> signInWithPhoneNumber(
    String? phoneNumber, [
    _i4.RecaptchaVerifier? verifier,
  ]) =>
      (super.noSuchMethod(
        Invocation.method(
          #signInWithPhoneNumber,
          [
            phoneNumber,
            verifier,
          ],
        ),
        returnValue:
            _i9.Future<_i4.ConfirmationResult>.value(_FakeConfirmationResult_3(
          this,
          Invocation.method(
            #signInWithPhoneNumber,
            [
              phoneNumber,
              verifier,
            ],
          ),
        )),
      ) as _i9.Future<_i4.ConfirmationResult>);

  @override
  _i9.Future<_i4.UserCredential> signInWithPopup(_i3.AuthProvider? provider) =>
      (super.noSuchMethod(
        Invocation.method(
          #signInWithPopup,
          [provider],
        ),
        returnValue: _i9.Future<_i4.UserCredential>.value(_FakeUserCredential_2(
          this,
          Invocation.method(
            #signInWithPopup,
            [provider],
          ),
        )),
      ) as _i9.Future<_i4.UserCredential>);

  @override
  _i9.Future<void> signInWithRedirect(_i3.AuthProvider? provider) =>
      (super.noSuchMethod(
        Invocation.method(
          #signInWithRedirect,
          [provider],
        ),
        returnValue: _i9.Future<void>.value(),
        returnValueForMissingStub: _i9.Future<void>.value(),
      ) as _i9.Future<void>);

  @override
  _i9.Future<void> signOut() => (super.noSuchMethod(
        Invocation.method(
          #signOut,
          [],
        ),
        returnValue: _i9.Future<void>.value(),
        returnValueForMissingStub: _i9.Future<void>.value(),
      ) as _i9.Future<void>);

  @override
  _i9.Future<String> verifyPasswordResetCode(String? code) =>
      (super.noSuchMethod(
        Invocation.method(
          #verifyPasswordResetCode,
          [code],
        ),
        returnValue: _i9.Future<String>.value(_i10.dummyValue<String>(
          this,
          Invocation.method(
            #verifyPasswordResetCode,
            [code],
          ),
        )),
      ) as _i9.Future<String>);

  @override
  _i9.Future<void> verifyPhoneNumber({
    String? phoneNumber,
    _i3.PhoneMultiFactorInfo? multiFactorInfo,
    required _i3.PhoneVerificationCompleted? verificationCompleted,
    required _i3.PhoneVerificationFailed? verificationFailed,
    required _i3.PhoneCodeSent? codeSent,
    required _i3.PhoneCodeAutoRetrievalTimeout? codeAutoRetrievalTimeout,
    String? autoRetrievedSmsCodeForTesting,
    Duration? timeout = const Duration(seconds: 30),
    int? forceResendingToken,
    _i3.MultiFactorSession? multiFactorSession,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #verifyPhoneNumber,
          [],
          {
            #phoneNumber: phoneNumber,
            #multiFactorInfo: multiFactorInfo,
            #verificationCompleted: verificationCompleted,
            #verificationFailed: verificationFailed,
            #codeSent: codeSent,
            #codeAutoRetrievalTimeout: codeAutoRetrievalTimeout,
            #autoRetrievedSmsCodeForTesting: autoRetrievedSmsCodeForTesting,
            #timeout: timeout,
            #forceResendingToken: forceResendingToken,
            #multiFactorSession: multiFactorSession,
          },
        ),
        returnValue: _i9.Future<void>.value(),
        returnValueForMissingStub: _i9.Future<void>.value(),
      ) as _i9.Future<void>);

  @override
  _i9.Future<void> revokeTokenWithAuthorizationCode(
          String? authorizationCode) =>
      (super.noSuchMethod(
        Invocation.method(
          #revokeTokenWithAuthorizationCode,
          [authorizationCode],
        ),
        returnValue: _i9.Future<void>.value(),
        returnValueForMissingStub: _i9.Future<void>.value(),
      ) as _i9.Future<void>);
}

/// A class which mocks [AuthenticationRepo].
///
/// See the documentation for Mockito's code generation for more information.
class MockAuthenticationRepo extends _i1.Mock
    implements _i11.AuthenticationRepo {
  MockAuthenticationRepo() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i9.Future<_i5.Either<_i12.Failure, _i4.UserCredential>> createUser(
          _i13.CreateUserEntity? entity) =>
      (super.noSuchMethod(
        Invocation.method(
          #createUser,
          [entity],
        ),
        returnValue:
            _i9.Future<_i5.Either<_i12.Failure, _i4.UserCredential>>.value(
                _FakeEither_4<_i12.Failure, _i4.UserCredential>(
          this,
          Invocation.method(
            #createUser,
            [entity],
          ),
        )),
      ) as _i9.Future<_i5.Either<_i12.Failure, _i4.UserCredential>>);

  @override
  _i9.Future<_i5.Either<_i12.Failure, _i6.Success>> login(
          _i14.LoginEntity? entity) =>
      (super.noSuchMethod(
        Invocation.method(
          #login,
          [entity],
        ),
        returnValue: _i9.Future<_i5.Either<_i12.Failure, _i6.Success>>.value(_FakeEither_4<_i12.Failure, _i6.Success>(
          this,
          Invocation.method(
            #login,
            [entity],
          ),
        )),
      ) as _i9.Future<_i5.Either<_i12.Failure, _i6.Success>>);

  @override
  _i9.Future<_i5.Either<_i12.Failure, _i6.Success>> signOut() => (super.noSuchMethod(
        Invocation.method(
          #signOut,
          [],
        ),
        returnValue: _i9.Future<_i5.Either<_i12.Failure, _i6.Success>>.value(_FakeEither_4<_i12.Failure, _i6.Success>(
          this,
          Invocation.method(
            #signOut,
            [],
          ),
        )),
      ) as _i9.Future<_i5.Either<_i12.Failure, _i6.Success>>);
}

/// A class which mocks [AuthenticationRemoteSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockAuthenticationRemoteSource extends _i1.Mock
    implements _i15.AuthenticationRemoteSource {
  MockAuthenticationRemoteSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i9.Future<_i4.UserCredential> createUser(
          _i16.CreateUserDto? createUserDto) =>
      (super.noSuchMethod(
        Invocation.method(
          #createUser,
          [createUserDto],
        ),
        returnValue: _i9.Future<_i4.UserCredential>.value(_FakeUserCredential_2(
          this,
          Invocation.method(
            #createUser,
            [createUserDto],
          ),
        )),
      ) as _i9.Future<_i4.UserCredential>);

  @override
  _i9.Future<_i6.Success> login(_i17.LoginDto? loginDto) => (super.noSuchMethod(
        Invocation.method(
          #login,
          [loginDto],
        ),
        returnValue: _i9.Future<_i6.Success>.value(_FakeSuccess_5(
          this,
          Invocation.method(
            #login,
            [loginDto],
          ),
        )),
      ) as _i9.Future<_i6.Success>);

  @override
  _i9.Future<_i6.Success> signOut() => (super.noSuchMethod(
        Invocation.method(
          #signOut,
          [],
        ),
        returnValue: _i9.Future<_i6.Success>.value(_FakeSuccess_5(
          this,
          Invocation.method(
            #signOut,
            [],
          ),
        )),
      ) as _i9.Future<_i6.Success>);
}

/// A class which mocks [CreateUserUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockCreateUserUseCase extends _i1.Mock implements _i18.CreateUserUseCase {
  MockCreateUserUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i9.Future<_i5.Either<_i12.Failure, _i6.Success>> call(
          _i13.CreateUserEntity? entity) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [entity],
        ),
        returnValue: _i9.Future<_i5.Either<_i12.Failure, _i6.Success>>.value(
            _FakeEither_4<_i12.Failure, _i6.Success>(
          this,
          Invocation.method(
            #call,
            [entity],
          ),
        )),
      ) as _i9.Future<_i5.Either<_i12.Failure, _i6.Success>>);
}

/// A class which mocks [LoginUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockLoginUseCase extends _i1.Mock implements _i19.LoginUseCase {
  MockLoginUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i9.Future<_i5.Either<_i12.Failure, _i6.Success>> call(
          _i14.LoginEntity? loginEntity) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [loginEntity],
        ),
        returnValue: _i9.Future<_i5.Either<_i12.Failure, _i6.Success>>.value(
            _FakeEither_4<_i12.Failure, _i6.Success>(
          this,
          Invocation.method(
            #call,
            [loginEntity],
          ),
        )),
      ) as _i9.Future<_i5.Either<_i12.Failure, _i6.Success>>);
}

/// A class which mocks [RegistrationBloc].
///
/// See the documentation for Mockito's code generation for more information.
class MockRegistrationBloc extends _i1.Mock implements _i7.RegistrationBloc {
  MockRegistrationBloc() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i7.RegistrationState get state => (super.noSuchMethod(
        Invocation.getter(#state),
        returnValue: _FakeRegistrationState_6(
          this,
          Invocation.getter(#state),
        ),
      ) as _i7.RegistrationState);

  @override
  _i9.Stream<_i7.RegistrationState> get stream => (super.noSuchMethod(
        Invocation.getter(#stream),
        returnValue: _i9.Stream<_i7.RegistrationState>.empty(),
      ) as _i9.Stream<_i7.RegistrationState>);

  @override
  bool get isClosed => (super.noSuchMethod(
        Invocation.getter(#isClosed),
        returnValue: false,
      ) as bool);

  @override
  void add(_i7.RegistrationEvent? event) => super.noSuchMethod(
        Invocation.method(
          #add,
          [event],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void onEvent(_i7.RegistrationEvent? event) => super.noSuchMethod(
        Invocation.method(
          #onEvent,
          [event],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void emit(_i7.RegistrationState? state) => super.noSuchMethod(
        Invocation.method(
          #emit,
          [state],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void on<E extends _i7.RegistrationEvent>(
    _i20.EventHandler<E, _i7.RegistrationState>? handler, {
    _i20.EventTransformer<E>? transformer,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #on,
          [handler],
          {#transformer: transformer},
        ),
        returnValueForMissingStub: null,
      );

  @override
  void onTransition(
          _i20.Transition<_i7.RegistrationEvent, _i7.RegistrationState>?
              transition) =>
      super.noSuchMethod(
        Invocation.method(
          #onTransition,
          [transition],
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i9.Future<void> close() => (super.noSuchMethod(
        Invocation.method(
          #close,
          [],
        ),
        returnValue: _i9.Future<void>.value(),
        returnValueForMissingStub: _i9.Future<void>.value(),
      ) as _i9.Future<void>);

  @override
  void onChange(_i20.Change<_i7.RegistrationState>? change) =>
      super.noSuchMethod(
        Invocation.method(
          #onChange,
          [change],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void addError(
    Object? error, [
    StackTrace? stackTrace,
  ]) =>
      super.noSuchMethod(
        Invocation.method(
          #addError,
          [
            error,
            stackTrace,
          ],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void onError(
    Object? error,
    StackTrace? stackTrace,
  ) =>
      super.noSuchMethod(
        Invocation.method(
          #onError,
          [
            error,
            stackTrace,
          ],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [LoginBloc].
///
/// See the documentation for Mockito's code generation for more information.
class MockLoginBloc extends _i1.Mock implements _i8.LoginBloc {
  MockLoginBloc() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i8.LoginState get state => (super.noSuchMethod(
        Invocation.getter(#state),
        returnValue: _FakeLoginState_7(
          this,
          Invocation.getter(#state),
        ),
      ) as _i8.LoginState);

  @override
  _i9.Stream<_i8.LoginState> get stream => (super.noSuchMethod(
        Invocation.getter(#stream),
        returnValue: _i9.Stream<_i8.LoginState>.empty(),
      ) as _i9.Stream<_i8.LoginState>);

  @override
  bool get isClosed => (super.noSuchMethod(
        Invocation.getter(#isClosed),
        returnValue: false,
      ) as bool);

  @override
  void add(_i8.LoginEvent? event) => super.noSuchMethod(
        Invocation.method(
          #add,
          [event],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void onEvent(_i8.LoginEvent? event) => super.noSuchMethod(
        Invocation.method(
          #onEvent,
          [event],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void emit(_i8.LoginState? state) => super.noSuchMethod(
        Invocation.method(
          #emit,
          [state],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void on<E extends _i8.LoginEvent>(
    _i20.EventHandler<E, _i8.LoginState>? handler, {
    _i20.EventTransformer<E>? transformer,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #on,
          [handler],
          {#transformer: transformer},
        ),
        returnValueForMissingStub: null,
      );

  @override
  void onTransition(
          _i20.Transition<_i8.LoginEvent, _i8.LoginState>? transition) =>
      super.noSuchMethod(
        Invocation.method(
          #onTransition,
          [transition],
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i9.Future<void> close() => (super.noSuchMethod(
        Invocation.method(
          #close,
          [],
        ),
        returnValue: _i9.Future<void>.value(),
        returnValueForMissingStub: _i9.Future<void>.value(),
      ) as _i9.Future<void>);

  @override
  void onChange(_i20.Change<_i8.LoginState>? change) => super.noSuchMethod(
        Invocation.method(
          #onChange,
          [change],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void addError(
    Object? error, [
    StackTrace? stackTrace,
  ]) =>
      super.noSuchMethod(
        Invocation.method(
          #addError,
          [
            error,
            stackTrace,
          ],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void onError(
    Object? error,
    StackTrace? stackTrace,
  ) =>
      super.noSuchMethod(
        Invocation.method(
          #onError,
          [
            error,
            stackTrace,
          ],
        ),
        returnValueForMissingStub: null,
      );
}
