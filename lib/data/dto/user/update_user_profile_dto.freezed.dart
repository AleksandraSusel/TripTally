// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_user_profile_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateUserProfileDto {
  String get username;
  String get country;
  String get defaultCurrencyCode;
  @JsonKey(includeToJson: false, includeFromJson: false)
  File? get profilePicture;

  /// Create a copy of UpdateUserProfileDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateUserProfileDtoCopyWith<UpdateUserProfileDto> get copyWith =>
      _$UpdateUserProfileDtoCopyWithImpl<UpdateUserProfileDto>(this as UpdateUserProfileDto, _$identity);

  /// Serializes this UpdateUserProfileDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateUserProfileDto &&
            (identical(other.username, username) || other.username == username) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.defaultCurrencyCode, defaultCurrencyCode) ||
                other.defaultCurrencyCode == defaultCurrencyCode) &&
            (identical(other.profilePicture, profilePicture) || other.profilePicture == profilePicture));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, username, country, defaultCurrencyCode, profilePicture);

  @override
  String toString() {
    return 'UpdateUserProfileDto(username: $username, country: $country, defaultCurrencyCode: $defaultCurrencyCode, profilePicture: $profilePicture)';
  }
}

/// @nodoc
abstract mixin class $UpdateUserProfileDtoCopyWith<$Res> {
  factory $UpdateUserProfileDtoCopyWith(UpdateUserProfileDto value, $Res Function(UpdateUserProfileDto) _then) =
      _$UpdateUserProfileDtoCopyWithImpl;
  @useResult
  $Res call(
      {String username,
      String country,
      String defaultCurrencyCode,
      @JsonKey(includeToJson: false, includeFromJson: false) File? profilePicture});
}

/// @nodoc
class _$UpdateUserProfileDtoCopyWithImpl<$Res> implements $UpdateUserProfileDtoCopyWith<$Res> {
  _$UpdateUserProfileDtoCopyWithImpl(this._self, this._then);

  final UpdateUserProfileDto _self;
  final $Res Function(UpdateUserProfileDto) _then;

  /// Create a copy of UpdateUserProfileDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? country = null,
    Object? defaultCurrencyCode = null,
    Object? profilePicture = freezed,
  }) {
    return _then(_self.copyWith(
      username: null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _self.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      defaultCurrencyCode: null == defaultCurrencyCode
          ? _self.defaultCurrencyCode
          : defaultCurrencyCode // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicture: freezed == profilePicture
          ? _self.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _UpdateUserProfileDto implements UpdateUserProfileDto {
  const _UpdateUserProfileDto(
      {required this.username,
      required this.country,
      required this.defaultCurrencyCode,
      @JsonKey(includeToJson: false, includeFromJson: false) this.profilePicture});
  factory _UpdateUserProfileDto.fromJson(Map<String, dynamic> json) => _$UpdateUserProfileDtoFromJson(json);

  @override
  final String username;
  @override
  final String country;
  @override
  final String defaultCurrencyCode;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final File? profilePicture;

  /// Create a copy of UpdateUserProfileDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdateUserProfileDtoCopyWith<_UpdateUserProfileDto> get copyWith =>
      __$UpdateUserProfileDtoCopyWithImpl<_UpdateUserProfileDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UpdateUserProfileDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateUserProfileDto &&
            (identical(other.username, username) || other.username == username) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.defaultCurrencyCode, defaultCurrencyCode) ||
                other.defaultCurrencyCode == defaultCurrencyCode) &&
            (identical(other.profilePicture, profilePicture) || other.profilePicture == profilePicture));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, username, country, defaultCurrencyCode, profilePicture);

  @override
  String toString() {
    return 'UpdateUserProfileDto(username: $username, country: $country, defaultCurrencyCode: $defaultCurrencyCode, profilePicture: $profilePicture)';
  }
}

/// @nodoc
abstract mixin class _$UpdateUserProfileDtoCopyWith<$Res> implements $UpdateUserProfileDtoCopyWith<$Res> {
  factory _$UpdateUserProfileDtoCopyWith(_UpdateUserProfileDto value, $Res Function(_UpdateUserProfileDto) _then) =
      __$UpdateUserProfileDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String username,
      String country,
      String defaultCurrencyCode,
      @JsonKey(includeToJson: false, includeFromJson: false) File? profilePicture});
}

/// @nodoc
class __$UpdateUserProfileDtoCopyWithImpl<$Res> implements _$UpdateUserProfileDtoCopyWith<$Res> {
  __$UpdateUserProfileDtoCopyWithImpl(this._self, this._then);

  final _UpdateUserProfileDto _self;
  final $Res Function(_UpdateUserProfileDto) _then;

  /// Create a copy of UpdateUserProfileDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? username = null,
    Object? country = null,
    Object? defaultCurrencyCode = null,
    Object? profilePicture = freezed,
  }) {
    return _then(_UpdateUserProfileDto(
      username: null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _self.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      defaultCurrencyCode: null == defaultCurrencyCode
          ? _self.defaultCurrencyCode
          : defaultCurrencyCode // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicture: freezed == profilePicture
          ? _self.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

// dart format on
