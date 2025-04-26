// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_account_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateAccountEntity {
  String get email;
  String get password;

  /// Create a copy of CreateAccountEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateAccountEntityCopyWith<CreateAccountEntity> get copyWith =>
      _$CreateAccountEntityCopyWithImpl<CreateAccountEntity>(this as CreateAccountEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateAccountEntity &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) || other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @override
  String toString() {
    return 'CreateAccountEntity(email: $email, password: $password)';
  }
}

/// @nodoc
abstract mixin class $CreateAccountEntityCopyWith<$Res> {
  factory $CreateAccountEntityCopyWith(CreateAccountEntity value, $Res Function(CreateAccountEntity) _then) =
      _$CreateAccountEntityCopyWithImpl;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$CreateAccountEntityCopyWithImpl<$Res> implements $CreateAccountEntityCopyWith<$Res> {
  _$CreateAccountEntityCopyWithImpl(this._self, this._then);

  final CreateAccountEntity _self;
  final $Res Function(CreateAccountEntity) _then;

  /// Create a copy of CreateAccountEntity
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

class _CreateAccountEntity implements CreateAccountEntity {
  const _CreateAccountEntity({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  /// Create a copy of CreateAccountEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateAccountEntityCopyWith<_CreateAccountEntity> get copyWith =>
      __$CreateAccountEntityCopyWithImpl<_CreateAccountEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateAccountEntity &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) || other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @override
  String toString() {
    return 'CreateAccountEntity(email: $email, password: $password)';
  }
}

/// @nodoc
abstract mixin class _$CreateAccountEntityCopyWith<$Res> implements $CreateAccountEntityCopyWith<$Res> {
  factory _$CreateAccountEntityCopyWith(_CreateAccountEntity value, $Res Function(_CreateAccountEntity) _then) =
      __$CreateAccountEntityCopyWithImpl;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$CreateAccountEntityCopyWithImpl<$Res> implements _$CreateAccountEntityCopyWith<$Res> {
  __$CreateAccountEntityCopyWithImpl(this._self, this._then);

  final _CreateAccountEntity _self;
  final $Res Function(_CreateAccountEntity) _then;

  /// Create a copy of CreateAccountEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_CreateAccountEntity(
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
