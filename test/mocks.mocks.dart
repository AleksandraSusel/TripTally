// Mocks generated by Mockito 5.4.4 from annotations
// in trip_tally/test/mocks.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i8;

import 'package:dartz/dartz.dart' as _i2;
import 'package:flutter_bloc/flutter_bloc.dart' as _i16;
import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i18;
import 'package:shared_preferences/shared_preferences.dart' as _i6;
import 'package:trip_tally/data/api/api_client.dart' as _i17;
import 'package:trip_tally/data/dto/user/create_account_dto.dart' as _i14;
import 'package:trip_tally/data/dto/user/login_dto.dart' as _i13;
import 'package:trip_tally/domain/data_source/authentication_remote_source.dart' as _i12;
import 'package:trip_tally/domain/entities/user/create_account_entity.dart' as _i11;
import 'package:trip_tally/domain/entities/user/login_entity.dart' as _i10;
import 'package:trip_tally/domain/repositories/authentication_repo.dart' as _i7;
import 'package:trip_tally/domain/use_case/create_account_use_case.dart' as _i19;
import 'package:trip_tally/domain/use_case/login_use_case.dart' as _i15;
import 'package:trip_tally/domain/utils/failure.dart' as _i9;
import 'package:trip_tally/domain/utils/shared_prefs_utils.dart' as _i20;
import 'package:trip_tally/domain/utils/success.dart' as _i3;
import 'package:trip_tally/presentation/pages/login_page/bloc/login_bloc.dart' as _i5;
import 'package:trip_tally/presentation/pages/registration_page/bloc/registration_bloc.dart' as _i4;

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

class _FakeEither_0<L, R> extends _i1.SmartFake implements _i2.Either<L, R> {
  _FakeEither_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeSuccess_1 extends _i1.SmartFake implements _i3.Success {
  _FakeSuccess_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeRegistrationState_2 extends _i1.SmartFake implements _i4.RegistrationState {
  _FakeRegistrationState_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeLoginState_3 extends _i1.SmartFake implements _i5.LoginState {
  _FakeLoginState_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeSharedPreferences_4 extends _i1.SmartFake implements _i6.SharedPreferences {
  _FakeSharedPreferences_4(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [AuthenticationRepo].
///
/// See the documentation for Mockito's code generation for more information.
class MockAuthenticationRepo extends _i1.Mock implements _i7.AuthenticationRepo {
  MockAuthenticationRepo() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i8.Future<_i2.Either<_i9.Failure, _i3.Success>> login(_i10.LoginEntity? entity) => (super.noSuchMethod(
        Invocation.method(
          #login,
          [entity],
        ),
        returnValue: _i8.Future<_i2.Either<_i9.Failure, _i3.Success>>.value(_FakeEither_0<_i9.Failure, _i3.Success>(
          this,
          Invocation.method(
            #login,
            [entity],
          ),
        )),
      ) as _i8.Future<_i2.Either<_i9.Failure, _i3.Success>>);

  @override
  _i8.Future<_i2.Either<_i9.Failure, _i3.Success>> createAccount(_i11.CreateAccountEntity? entity) => (super.noSuchMethod(
        Invocation.method(
          #createAccount,
          [entity],
        ),
        returnValue: _i8.Future<_i2.Either<_i9.Failure, _i3.Success>>.value(_FakeEither_0<_i9.Failure, _i3.Success>(
          this,
          Invocation.method(
            #createAccount,
            [entity],
          ),
        )),
      ) as _i8.Future<_i2.Either<_i9.Failure, _i3.Success>>);

  @override
  _i8.Future<_i2.Either<_i9.Failure, _i3.Success>> signOut() => (super.noSuchMethod(
        Invocation.method(
          #signOut,
          [],
        ),
        returnValue: _i8.Future<_i2.Either<_i9.Failure, _i3.Success>>.value(_FakeEither_0<_i9.Failure, _i3.Success>(
          this,
          Invocation.method(
            #signOut,
            [],
          ),
        )),
      ) as _i8.Future<_i2.Either<_i9.Failure, _i3.Success>>);
}

/// A class which mocks [AuthenticationRemoteSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockAuthenticationRemoteSource extends _i1.Mock implements _i12.AuthenticationRemoteSource {
  MockAuthenticationRemoteSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i8.Future<_i3.Success> login(_i13.LoginDto? loginDto) => (super.noSuchMethod(
        Invocation.method(
          #login,
          [loginDto],
        ),
        returnValue: _i8.Future<_i3.Success>.value(_FakeSuccess_1(
          this,
          Invocation.method(
            #login,
            [loginDto],
          ),
        )),
      ) as _i8.Future<_i3.Success>);

  @override
  _i8.Future<_i3.Success> createAccount(_i14.CreateAccountDto? createUserDto) => (super.noSuchMethod(
        Invocation.method(
          #createAccount,
          [createUserDto],
        ),
        returnValue: _i8.Future<_i3.Success>.value(_FakeSuccess_1(
          this,
          Invocation.method(
            #createAccount,
            [createUserDto],
          ),
        )),
      ) as _i8.Future<_i3.Success>);

  @override
  _i8.Future<_i3.Success> signOut() => (super.noSuchMethod(
        Invocation.method(
          #signOut,
          [],
        ),
        returnValue: _i8.Future<_i3.Success>.value(_FakeSuccess_1(
          this,
          Invocation.method(
            #signOut,
            [],
          ),
        )),
      ) as _i8.Future<_i3.Success>);
}

/// A class which mocks [LoginUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockLoginUseCase extends _i1.Mock implements _i15.LoginUseCase {
  MockLoginUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i8.Future<_i2.Either<_i9.Failure, _i3.Success>> call(_i10.LoginEntity? loginEntity) => (super.noSuchMethod(
        Invocation.method(
          #call,
          [loginEntity],
        ),
        returnValue: _i8.Future<_i2.Either<_i9.Failure, _i3.Success>>.value(_FakeEither_0<_i9.Failure, _i3.Success>(
          this,
          Invocation.method(
            #call,
            [loginEntity],
          ),
        )),
      ) as _i8.Future<_i2.Either<_i9.Failure, _i3.Success>>);
}

/// A class which mocks [RegistrationBloc].
///
/// See the documentation for Mockito's code generation for more information.
class MockRegistrationBloc extends _i1.Mock implements _i4.RegistrationBloc {
  MockRegistrationBloc() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.RegistrationState get state => (super.noSuchMethod(
        Invocation.getter(#state),
        returnValue: _FakeRegistrationState_2(
          this,
          Invocation.getter(#state),
        ),
      ) as _i4.RegistrationState);

  @override
  _i8.Stream<_i4.RegistrationState> get stream => (super.noSuchMethod(
        Invocation.getter(#stream),
        returnValue: _i8.Stream<_i4.RegistrationState>.empty(),
      ) as _i8.Stream<_i4.RegistrationState>);

  @override
  bool get isClosed => (super.noSuchMethod(
        Invocation.getter(#isClosed),
        returnValue: false,
      ) as bool);

  @override
  void add(_i4.RegistrationEvent? event) => super.noSuchMethod(
        Invocation.method(
          #add,
          [event],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void onEvent(_i4.RegistrationEvent? event) => super.noSuchMethod(
        Invocation.method(
          #onEvent,
          [event],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void emit(_i4.RegistrationState? state) => super.noSuchMethod(
        Invocation.method(
          #emit,
          [state],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void on<E extends _i4.RegistrationEvent>(
    _i16.EventHandler<E, _i4.RegistrationState>? handler, {
    _i16.EventTransformer<E>? transformer,
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
  void onTransition(_i16.Transition<_i4.RegistrationEvent, _i4.RegistrationState>? transition) => super.noSuchMethod(
        Invocation.method(
          #onTransition,
          [transition],
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i8.Future<void> close() => (super.noSuchMethod(
        Invocation.method(
          #close,
          [],
        ),
        returnValue: _i8.Future<void>.value(),
        returnValueForMissingStub: _i8.Future<void>.value(),
      ) as _i8.Future<void>);

  @override
  void onChange(_i16.Change<_i4.RegistrationState>? change) => super.noSuchMethod(
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
class MockLoginBloc extends _i1.Mock implements _i5.LoginBloc {
  MockLoginBloc() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.LoginState get state => (super.noSuchMethod(
        Invocation.getter(#state),
        returnValue: _FakeLoginState_3(
          this,
          Invocation.getter(#state),
        ),
      ) as _i5.LoginState);

  @override
  _i8.Stream<_i5.LoginState> get stream => (super.noSuchMethod(
        Invocation.getter(#stream),
        returnValue: _i8.Stream<_i5.LoginState>.empty(),
      ) as _i8.Stream<_i5.LoginState>);

  @override
  bool get isClosed => (super.noSuchMethod(
        Invocation.getter(#isClosed),
        returnValue: false,
      ) as bool);

  @override
  void add(_i5.LoginEvent? event) => super.noSuchMethod(
        Invocation.method(
          #add,
          [event],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void onEvent(_i5.LoginEvent? event) => super.noSuchMethod(
        Invocation.method(
          #onEvent,
          [event],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void emit(_i5.LoginState? state) => super.noSuchMethod(
        Invocation.method(
          #emit,
          [state],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void on<E extends _i5.LoginEvent>(
    _i16.EventHandler<E, _i5.LoginState>? handler, {
    _i16.EventTransformer<E>? transformer,
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
  void onTransition(_i16.Transition<_i5.LoginEvent, _i5.LoginState>? transition) => super.noSuchMethod(
        Invocation.method(
          #onTransition,
          [transition],
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i8.Future<void> close() => (super.noSuchMethod(
        Invocation.method(
          #close,
          [],
        ),
        returnValue: _i8.Future<void>.value(),
        returnValueForMissingStub: _i8.Future<void>.value(),
      ) as _i8.Future<void>);

  @override
  void onChange(_i16.Change<_i5.LoginState>? change) => super.noSuchMethod(
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

/// A class which mocks [ApiClient].
///
/// See the documentation for Mockito's code generation for more information.
class MockApiClient extends _i1.Mock implements _i17.ApiClient {
  MockApiClient() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i8.Future<String> login(_i13.LoginDto? dto) => (super.noSuchMethod(
        Invocation.method(
          #login,
          [dto],
        ),
        returnValue: _i8.Future<String>.value(_i18.dummyValue<String>(
          this,
          Invocation.method(
            #login,
            [dto],
          ),
        )),
      ) as _i8.Future<String>);

  @override
  _i8.Future<String> createAccount(_i14.CreateAccountDto? dto) => (super.noSuchMethod(
        Invocation.method(
          #createAccount,
          [dto],
        ),
        returnValue: _i8.Future<String>.value(_i18.dummyValue<String>(
          this,
          Invocation.method(
            #createAccount,
            [dto],
          ),
        )),
      ) as _i8.Future<String>);

  @override
  _i8.Future<String> exampleDelete() => (super.noSuchMethod(
        Invocation.method(
          #exampleDelete,
          [],
        ),
        returnValue: _i8.Future<String>.value(_i18.dummyValue<String>(
          this,
          Invocation.method(
            #exampleDelete,
            [],
          ),
        )),
      ) as _i8.Future<String>);
}

/// A class which mocks [SharedPreferences].
///
/// See the documentation for Mockito's code generation for more information.
class MockSharedPreferences extends _i1.Mock implements _i6.SharedPreferences {
  MockSharedPreferences() {
    _i1.throwOnMissingStub(this);
  }

  @override
  Set<String> getKeys() => (super.noSuchMethod(
        Invocation.method(
          #getKeys,
          [],
        ),
        returnValue: <String>{},
      ) as Set<String>);

  @override
  Object? get(String? key) => (super.noSuchMethod(Invocation.method(
        #get,
        [key],
      )) as Object?);

  @override
  bool? getBool(String? key) => (super.noSuchMethod(Invocation.method(
        #getBool,
        [key],
      )) as bool?);

  @override
  int? getInt(String? key) => (super.noSuchMethod(Invocation.method(
        #getInt,
        [key],
      )) as int?);

  @override
  double? getDouble(String? key) => (super.noSuchMethod(Invocation.method(
        #getDouble,
        [key],
      )) as double?);

  @override
  String? getString(String? key) => (super.noSuchMethod(Invocation.method(
        #getString,
        [key],
      )) as String?);

  @override
  bool containsKey(String? key) => (super.noSuchMethod(
        Invocation.method(
          #containsKey,
          [key],
        ),
        returnValue: false,
      ) as bool);

  @override
  List<String>? getStringList(String? key) => (super.noSuchMethod(Invocation.method(
        #getStringList,
        [key],
      )) as List<String>?);

  @override
  _i8.Future<bool> setBool(
    String? key,
    bool? value,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #setBool,
          [
            key,
            value,
          ],
        ),
        returnValue: _i8.Future<bool>.value(false),
      ) as _i8.Future<bool>);

  @override
  _i8.Future<bool> setInt(
    String? key,
    int? value,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #setInt,
          [
            key,
            value,
          ],
        ),
        returnValue: _i8.Future<bool>.value(false),
      ) as _i8.Future<bool>);

  @override
  _i8.Future<bool> setDouble(
    String? key,
    double? value,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #setDouble,
          [
            key,
            value,
          ],
        ),
        returnValue: _i8.Future<bool>.value(false),
      ) as _i8.Future<bool>);

  @override
  _i8.Future<bool> setString(
    String? key,
    String? value,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #setString,
          [
            key,
            value,
          ],
        ),
        returnValue: _i8.Future<bool>.value(false),
      ) as _i8.Future<bool>);

  @override
  _i8.Future<bool> setStringList(
    String? key,
    List<String>? value,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #setStringList,
          [
            key,
            value,
          ],
        ),
        returnValue: _i8.Future<bool>.value(false),
      ) as _i8.Future<bool>);

  @override
  _i8.Future<bool> remove(String? key) => (super.noSuchMethod(
        Invocation.method(
          #remove,
          [key],
        ),
        returnValue: _i8.Future<bool>.value(false),
      ) as _i8.Future<bool>);

  @override
  _i8.Future<bool> commit() => (super.noSuchMethod(
        Invocation.method(
          #commit,
          [],
        ),
        returnValue: _i8.Future<bool>.value(false),
      ) as _i8.Future<bool>);

  @override
  _i8.Future<bool> clear() => (super.noSuchMethod(
        Invocation.method(
          #clear,
          [],
        ),
        returnValue: _i8.Future<bool>.value(false),
      ) as _i8.Future<bool>);

  @override
  _i8.Future<void> reload() => (super.noSuchMethod(
        Invocation.method(
          #reload,
          [],
        ),
        returnValue: _i8.Future<void>.value(),
        returnValueForMissingStub: _i8.Future<void>.value(),
      ) as _i8.Future<void>);
}

/// A class which mocks [CreateAccountUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockCreateAccountUseCase extends _i1.Mock implements _i19.CreateAccountUseCase {
  MockCreateAccountUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i8.Future<_i2.Either<_i9.Failure, _i3.Success>> call(_i11.CreateAccountEntity? entity) => (super.noSuchMethod(
        Invocation.method(
          #call,
          [entity],
        ),
        returnValue: _i8.Future<_i2.Either<_i9.Failure, _i3.Success>>.value(_FakeEither_0<_i9.Failure, _i3.Success>(
          this,
          Invocation.method(
            #call,
            [entity],
          ),
        )),
      ) as _i8.Future<_i2.Either<_i9.Failure, _i3.Success>>);
}

/// A class which mocks [SharedPrefsUtils].
///
/// See the documentation for Mockito's code generation for more information.
class MockSharedPrefsUtils extends _i1.Mock implements _i20.SharedPrefsUtils {
  MockSharedPrefsUtils() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.SharedPreferences get prefs => (super.noSuchMethod(
        Invocation.getter(#prefs),
        returnValue: _FakeSharedPreferences_4(
          this,
          Invocation.getter(#prefs),
        ),
      ) as _i6.SharedPreferences);

  @override
  _i8.Future<bool> get removeToken => (super.noSuchMethod(
        Invocation.getter(#removeToken),
        returnValue: _i8.Future<bool>.value(false),
      ) as _i8.Future<bool>);

  @override
  _i8.Future<void> saveToken(String? token) => (super.noSuchMethod(
        Invocation.method(
          #saveToken,
          [token],
        ),
        returnValue: _i8.Future<void>.value(),
        returnValueForMissingStub: _i8.Future<void>.value(),
      ) as _i8.Future<void>);
}
