// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginEntity {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginEntityCopyWith<LoginEntity> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEntityCopyWith<$Res> {
  factory $LoginEntityCopyWith(LoginEntity value, $Res Function(LoginEntity) then) = _$LoginEntityCopyWithImpl<$Res, LoginEntity>;

  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$LoginEntityCopyWithImpl<$Res, $Val extends LoginEntity> implements $LoginEntityCopyWith<$Res> {
  _$LoginEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginEntityImplCopyWith<$Res> implements $LoginEntityCopyWith<$Res> {
  factory _$$LoginEntityImplCopyWith(_$LoginEntityImpl value, $Res Function(_$LoginEntityImpl) then) =
      __$$LoginEntityImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$LoginEntityImplCopyWithImpl<$Res> extends _$LoginEntityCopyWithImpl<$Res, _$LoginEntityImpl>
    implements _$$LoginEntityImplCopyWith<$Res> {
  __$$LoginEntityImplCopyWithImpl(_$LoginEntityImpl _value, $Res Function(_$LoginEntityImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$LoginEntityImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginEntityImpl implements _LoginEntity {
  const _$LoginEntityImpl({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginEntity(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginEntityImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) || other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginEntityImplCopyWith<_$LoginEntityImpl> get copyWith => __$$LoginEntityImplCopyWithImpl<_$LoginEntityImpl>(this, _$identity);
}

abstract class _LoginEntity implements LoginEntity {
  const factory _LoginEntity({required final String email, required final String password}) = _$LoginEntityImpl;

  @override
  String get email;

  @override
  String get password;

  @override
  @JsonKey(ignore: true)
  _$$LoginEntityImplCopyWith<_$LoginEntityImpl> get copyWith => throw _privateConstructorUsedError;
}
