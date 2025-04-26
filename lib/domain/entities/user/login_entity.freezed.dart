// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginEntity {
  String get email;
  String get password;

  /// Create a copy of LoginEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoginEntityCopyWith<LoginEntity> get copyWith =>
      _$LoginEntityCopyWithImpl<LoginEntity>(this as LoginEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginEntity &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) || other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @override
  String toString() {
    return 'LoginEntity(email: $email, password: $password)';
  }
}

/// @nodoc
abstract mixin class $LoginEntityCopyWith<$Res> {
  factory $LoginEntityCopyWith(LoginEntity value, $Res Function(LoginEntity) _then) = _$LoginEntityCopyWithImpl;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$LoginEntityCopyWithImpl<$Res> implements $LoginEntityCopyWith<$Res> {
  _$LoginEntityCopyWithImpl(this._self, this._then);

  final LoginEntity _self;
  final $Res Function(LoginEntity) _then;

  /// Create a copy of LoginEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_self.copyWith(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _LoginEntity implements LoginEntity {
  const _LoginEntity({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  /// Create a copy of LoginEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LoginEntityCopyWith<_LoginEntity> get copyWith => __$LoginEntityCopyWithImpl<_LoginEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoginEntity &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) || other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @override
  String toString() {
    return 'LoginEntity(email: $email, password: $password)';
  }
}

/// @nodoc
abstract mixin class _$LoginEntityCopyWith<$Res> implements $LoginEntityCopyWith<$Res> {
  factory _$LoginEntityCopyWith(_LoginEntity value, $Res Function(_LoginEntity) _then) = __$LoginEntityCopyWithImpl;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$LoginEntityCopyWithImpl<$Res> implements _$LoginEntityCopyWith<$Res> {
  __$LoginEntityCopyWithImpl(this._self, this._then);

  final _LoginEntity _self;
  final $Res Function(_LoginEntity) _then;

  /// Create a copy of LoginEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_LoginEntity(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
