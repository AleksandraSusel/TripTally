// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateUserDto _$CreateUserDtoFromJson(Map<String, dynamic> json) {
  return _CreateUserDto.fromJson(json);
}

/// @nodoc
mixin _$CreateUserDto {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateUserDtoCopyWith<CreateUserDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateUserDtoCopyWith<$Res> {
  factory $CreateUserDtoCopyWith(CreateUserDto value, $Res Function(CreateUserDto) then) =
      _$CreateUserDtoCopyWithImpl<$Res, CreateUserDto>;

  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$CreateUserDtoCopyWithImpl<$Res, $Val extends CreateUserDto> implements $CreateUserDtoCopyWith<$Res> {
  _$CreateUserDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$CreateUserDtoImplCopyWith<$Res> implements $CreateUserDtoCopyWith<$Res> {
  factory _$$CreateUserDtoImplCopyWith(_$CreateUserDtoImpl value, $Res Function(_$CreateUserDtoImpl) then) =
      __$$CreateUserDtoImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$CreateUserDtoImplCopyWithImpl<$Res> extends _$CreateUserDtoCopyWithImpl<$Res, _$CreateUserDtoImpl>
    implements _$$CreateUserDtoImplCopyWith<$Res> {
  __$$CreateUserDtoImplCopyWithImpl(_$CreateUserDtoImpl _value, $Res Function(_$CreateUserDtoImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$CreateUserDtoImpl(
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
@JsonSerializable()
class _$CreateUserDtoImpl implements _CreateUserDto {
  const _$CreateUserDtoImpl({required this.email, required this.password});

  factory _$CreateUserDtoImpl.fromJson(Map<String, dynamic> json) => _$$CreateUserDtoImplFromJson(json);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'CreateUserDto(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateUserDtoImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) || other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateUserDtoImplCopyWith<_$CreateUserDtoImpl> get copyWith =>
      __$$CreateUserDtoImplCopyWithImpl<_$CreateUserDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateUserDtoImplToJson(
      this,
    );
  }
}

abstract class _CreateUserDto implements CreateUserDto {
  const factory _CreateUserDto({required final String email, required final String password}) = _$CreateUserDtoImpl;

  factory _CreateUserDto.fromJson(Map<String, dynamic> json) = _$CreateUserDtoImpl.fromJson;

  @override
  String get email;

  @override
  String get password;

  @override
  @JsonKey(ignore: true)
  _$$CreateUserDtoImplCopyWith<_$CreateUserDtoImpl> get copyWith => throw _privateConstructorUsedError;
}
