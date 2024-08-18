// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_user_profile_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateUserProfileEntity {
  String get username => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get defaultCurrencyCode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateUserProfileEntityCopyWith<UpdateUserProfileEntity> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateUserProfileEntityCopyWith<$Res> {
  factory $UpdateUserProfileEntityCopyWith(UpdateUserProfileEntity value, $Res Function(UpdateUserProfileEntity) then) =
      _$UpdateUserProfileEntityCopyWithImpl<$Res, UpdateUserProfileEntity>;
  @useResult
  $Res call({String username, String country, String defaultCurrencyCode});
}

/// @nodoc
class _$UpdateUserProfileEntityCopyWithImpl<$Res, $Val extends UpdateUserProfileEntity>
    implements $UpdateUserProfileEntityCopyWith<$Res> {
  _$UpdateUserProfileEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? country = null,
    Object? defaultCurrencyCode = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      defaultCurrencyCode: null == defaultCurrencyCode
          ? _value.defaultCurrencyCode
          : defaultCurrencyCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateUserProfileEntityImplCopyWith<$Res> implements $UpdateUserProfileEntityCopyWith<$Res> {
  factory _$$UpdateUserProfileEntityImplCopyWith(
          _$UpdateUserProfileEntityImpl value, $Res Function(_$UpdateUserProfileEntityImpl) then) =
      __$$UpdateUserProfileEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String username, String country, String defaultCurrencyCode});
}

/// @nodoc
class __$$UpdateUserProfileEntityImplCopyWithImpl<$Res>
    extends _$UpdateUserProfileEntityCopyWithImpl<$Res, _$UpdateUserProfileEntityImpl>
    implements _$$UpdateUserProfileEntityImplCopyWith<$Res> {
  __$$UpdateUserProfileEntityImplCopyWithImpl(
      _$UpdateUserProfileEntityImpl _value, $Res Function(_$UpdateUserProfileEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? country = null,
    Object? defaultCurrencyCode = null,
  }) {
    return _then(_$UpdateUserProfileEntityImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      defaultCurrencyCode: null == defaultCurrencyCode
          ? _value.defaultCurrencyCode
          : defaultCurrencyCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateUserProfileEntityImpl implements _UpdateUserProfileEntity {
  const _$UpdateUserProfileEntityImpl(
      {required this.username, required this.country, required this.defaultCurrencyCode});

  @override
  final String username;
  @override
  final String country;
  @override
  final String defaultCurrencyCode;

  @override
  String toString() {
    return 'UpdateUserProfileEntity(username: $username, country: $country, defaultCurrencyCode: $defaultCurrencyCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserProfileEntityImpl &&
            (identical(other.username, username) || other.username == username) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.defaultCurrencyCode, defaultCurrencyCode) ||
                other.defaultCurrencyCode == defaultCurrencyCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username, country, defaultCurrencyCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserProfileEntityImplCopyWith<_$UpdateUserProfileEntityImpl> get copyWith =>
      __$$UpdateUserProfileEntityImplCopyWithImpl<_$UpdateUserProfileEntityImpl>(this, _$identity);
}

abstract class _UpdateUserProfileEntity implements UpdateUserProfileEntity {
  const factory _UpdateUserProfileEntity(
      {required final String username,
      required final String country,
      required final String defaultCurrencyCode}) = _$UpdateUserProfileEntityImpl;

  @override
  String get username;
  @override
  String get country;
  @override
  String get defaultCurrencyCode;
  @override
  @JsonKey(ignore: true)
  _$$UpdateUserProfileEntityImplCopyWith<_$UpdateUserProfileEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
