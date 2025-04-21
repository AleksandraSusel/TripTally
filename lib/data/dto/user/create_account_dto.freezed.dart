// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_account_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateAccountDto {
  String get email;
  String get password;

  /// Create a copy of CreateAccountDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateAccountDtoCopyWith<CreateAccountDto> get copyWith =>
      _$CreateAccountDtoCopyWithImpl<CreateAccountDto>(this as CreateAccountDto, _$identity);

  /// Serializes this CreateAccountDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateAccountDto &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) || other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @override
  String toString() {
    return 'CreateAccountDto(email: $email, password: $password)';
  }
}

/// @nodoc
abstract mixin class $CreateAccountDtoCopyWith<$Res> {
  factory $CreateAccountDtoCopyWith(CreateAccountDto value, $Res Function(CreateAccountDto) _then) =
      _$CreateAccountDtoCopyWithImpl;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$CreateAccountDtoCopyWithImpl<$Res> implements $CreateAccountDtoCopyWith<$Res> {
  _$CreateAccountDtoCopyWithImpl(this._self, this._then);

  final CreateAccountDto _self;
  final $Res Function(CreateAccountDto) _then;

  /// Create a copy of CreateAccountDto
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
class _CreateAccountDto implements CreateAccountDto {
  const _CreateAccountDto({required this.email, required this.password});
  factory _CreateAccountDto.fromJson(Map<String, dynamic> json) => _$CreateAccountDtoFromJson(json);

  @override
  final String email;
  @override
  final String password;

  /// Create a copy of CreateAccountDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateAccountDtoCopyWith<_CreateAccountDto> get copyWith =>
      __$CreateAccountDtoCopyWithImpl<_CreateAccountDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateAccountDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateAccountDto &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) || other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @override
  String toString() {
    return 'CreateAccountDto(email: $email, password: $password)';
  }
}

/// @nodoc
abstract mixin class _$CreateAccountDtoCopyWith<$Res> implements $CreateAccountDtoCopyWith<$Res> {
  factory _$CreateAccountDtoCopyWith(_CreateAccountDto value, $Res Function(_CreateAccountDto) _then) =
      __$CreateAccountDtoCopyWithImpl;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$CreateAccountDtoCopyWithImpl<$Res> implements _$CreateAccountDtoCopyWith<$Res> {
  __$CreateAccountDtoCopyWithImpl(this._self, this._then);

  final _CreateAccountDto _self;
  final $Res Function(_CreateAccountDto) _then;

  /// Create a copy of CreateAccountDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_CreateAccountDto(
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
