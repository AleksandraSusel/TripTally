// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_user_profile_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateUserProfileDto _$UpdateUserProfileDtoFromJson(Map<String, dynamic> json) {
  return _UpdateUserProfileDto.fromJson(json);
}

/// @nodoc
mixin _$UpdateUserProfileDto {
  String get username => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get defaultCurrencyCode => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false, includeFromJson: false)
  File? get profilePicture => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateUserProfileDtoCopyWith<UpdateUserProfileDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateUserProfileDtoCopyWith<$Res> {
  factory $UpdateUserProfileDtoCopyWith(UpdateUserProfileDto value, $Res Function(UpdateUserProfileDto) then) =
      _$UpdateUserProfileDtoCopyWithImpl<$Res, UpdateUserProfileDto>;
  @useResult
  $Res call(
      {String username,
      String country,
      String defaultCurrencyCode,
      @JsonKey(includeToJson: false, includeFromJson: false) File? profilePicture});
}

/// @nodoc
class _$UpdateUserProfileDtoCopyWithImpl<$Res, $Val extends UpdateUserProfileDto>
    implements $UpdateUserProfileDtoCopyWith<$Res> {
  _$UpdateUserProfileDtoCopyWithImpl(this._value, this._then);

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
    Object? profilePicture = freezed,
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
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as File?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateUserProfileDtoImplCopyWith<$Res> implements $UpdateUserProfileDtoCopyWith<$Res> {
  factory _$$UpdateUserProfileDtoImplCopyWith(
          _$UpdateUserProfileDtoImpl value, $Res Function(_$UpdateUserProfileDtoImpl) then) =
      __$$UpdateUserProfileDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String username,
      String country,
      String defaultCurrencyCode,
      @JsonKey(includeToJson: false, includeFromJson: false) File? profilePicture});
}

/// @nodoc
class __$$UpdateUserProfileDtoImplCopyWithImpl<$Res>
    extends _$UpdateUserProfileDtoCopyWithImpl<$Res, _$UpdateUserProfileDtoImpl>
    implements _$$UpdateUserProfileDtoImplCopyWith<$Res> {
  __$$UpdateUserProfileDtoImplCopyWithImpl(
      _$UpdateUserProfileDtoImpl _value, $Res Function(_$UpdateUserProfileDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? country = null,
    Object? defaultCurrencyCode = null,
    Object? profilePicture = freezed,
  }) {
    return _then(_$UpdateUserProfileDtoImpl(
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
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateUserProfileDtoImpl implements _UpdateUserProfileDto {
  const _$UpdateUserProfileDtoImpl(
      {required this.username,
      required this.country,
      required this.defaultCurrencyCode,
      @JsonKey(includeToJson: false, includeFromJson: false) this.profilePicture});

  factory _$UpdateUserProfileDtoImpl.fromJson(Map<String, dynamic> json) => _$$UpdateUserProfileDtoImplFromJson(json);

  @override
  final String username;
  @override
  final String country;
  @override
  final String defaultCurrencyCode;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final File? profilePicture;

  @override
  String toString() {
    return 'UpdateUserProfileDto(username: $username, country: $country, defaultCurrencyCode: $defaultCurrencyCode, profilePicture: $profilePicture)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserProfileDtoImpl &&
            (identical(other.username, username) || other.username == username) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.defaultCurrencyCode, defaultCurrencyCode) ||
                other.defaultCurrencyCode == defaultCurrencyCode) &&
            (identical(other.profilePicture, profilePicture) || other.profilePicture == profilePicture));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, username, country, defaultCurrencyCode, profilePicture);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserProfileDtoImplCopyWith<_$UpdateUserProfileDtoImpl> get copyWith =>
      __$$UpdateUserProfileDtoImplCopyWithImpl<_$UpdateUserProfileDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateUserProfileDtoImplToJson(
      this,
    );
  }
}

abstract class _UpdateUserProfileDto implements UpdateUserProfileDto {
  const factory _UpdateUserProfileDto(
      {required final String username,
      required final String country,
      required final String defaultCurrencyCode,
      @JsonKey(includeToJson: false, includeFromJson: false) final File? profilePicture}) = _$UpdateUserProfileDtoImpl;

  factory _UpdateUserProfileDto.fromJson(Map<String, dynamic> json) = _$UpdateUserProfileDtoImpl.fromJson;

  @override
  String get username;
  @override
  String get country;
  @override
  String get defaultCurrencyCode;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  File? get profilePicture;
  @override
  @JsonKey(ignore: true)
  _$$UpdateUserProfileDtoImplCopyWith<_$UpdateUserProfileDtoImpl> get copyWith => throw _privateConstructorUsedError;
}
