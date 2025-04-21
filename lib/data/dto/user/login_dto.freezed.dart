// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginDto {
  String get email;
  String get password;

  /// Create a copy of LoginDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoginDtoCopyWith<LoginDto> get copyWith => _$LoginDtoCopyWithImpl<LoginDto>(this as LoginDto, _$identity);

  /// Serializes this LoginDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginDto &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) || other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @override
  String toString() {
    return 'LoginDto(email: $email, password: $password)';
  }
}

/// @nodoc
abstract mixin class $LoginDtoCopyWith<$Res> {
  factory $LoginDtoCopyWith(LoginDto value, $Res Function(LoginDto) _then) = _$LoginDtoCopyWithImpl;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$LoginDtoCopyWithImpl<$Res> implements $LoginDtoCopyWith<$Res> {
  _$LoginDtoCopyWithImpl(this._self, this._then);

  final LoginDto _self;
  final $Res Function(LoginDto) _then;

  /// Create a copy of LoginDto
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
@JsonSerializable()
class _LoginDto implements LoginDto {
  const _LoginDto({required this.email, required this.password});
  factory _LoginDto.fromJson(Map<String, dynamic> json) => _$LoginDtoFromJson(json);

  @override
  final String email;
  @override
  final String password;

  /// Create a copy of LoginDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LoginDtoCopyWith<_LoginDto> get copyWith => __$LoginDtoCopyWithImpl<_LoginDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LoginDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoginDto &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) || other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @override
  String toString() {
    return 'LoginDto(email: $email, password: $password)';
  }
}

/// @nodoc
abstract mixin class _$LoginDtoCopyWith<$Res> implements $LoginDtoCopyWith<$Res> {
  factory _$LoginDtoCopyWith(_LoginDto value, $Res Function(_LoginDto) _then) = __$LoginDtoCopyWithImpl;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$LoginDtoCopyWithImpl<$Res> implements _$LoginDtoCopyWith<$Res> {
  __$LoginDtoCopyWithImpl(this._self, this._then);

  final _LoginDto _self;
  final $Res Function(_LoginDto) _then;

  /// Create a copy of LoginDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_LoginDto(
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
