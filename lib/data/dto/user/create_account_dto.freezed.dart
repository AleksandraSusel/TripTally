// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_account_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateAccountDto _$CreateAccountDtoFromJson(Map<String, dynamic> json) {
  return _CreateAccountDto.fromJson(json);
}

/// @nodoc
mixin _$CreateAccountDto {
  String get email => throw _privateConstructorUsedError;

  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateAccountDtoCopyWith<CreateAccountDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateAccountDtoCopyWith<$Res> {
  factory $CreateAccountDtoCopyWith(CreateAccountDto value, $Res Function(CreateAccountDto) then) =
      _$CreateAccountDtoCopyWithImpl<$Res, CreateAccountDto>;

  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$CreateAccountDtoCopyWithImpl<$Res, $Val extends CreateAccountDto> implements $CreateAccountDtoCopyWith<$Res> {
  _$CreateAccountDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$CreateAccountDtoImplCopyWith<$Res> implements $CreateAccountDtoCopyWith<$Res> {
  factory _$$CreateAccountDtoImplCopyWith(_$CreateAccountDtoImpl value, $Res Function(_$CreateAccountDtoImpl) then) =
      __$$CreateAccountDtoImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$CreateAccountDtoImplCopyWithImpl<$Res> extends _$CreateAccountDtoCopyWithImpl<$Res, _$CreateAccountDtoImpl>
    implements _$$CreateAccountDtoImplCopyWith<$Res> {
  __$$CreateAccountDtoImplCopyWithImpl(_$CreateAccountDtoImpl _value, $Res Function(_$CreateAccountDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$CreateAccountDtoImpl(
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
class _$CreateAccountDtoImpl implements _CreateAccountDto {
  const _$CreateAccountDtoImpl({required this.email, required this.password});

  factory _$CreateAccountDtoImpl.fromJson(Map<String, dynamic> json) => _$$CreateAccountDtoImplFromJson(json);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'CreateAccountDto(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateAccountDtoImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) || other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateAccountDtoImplCopyWith<_$CreateAccountDtoImpl> get copyWith =>
      __$$CreateAccountDtoImplCopyWithImpl<_$CreateAccountDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateAccountDtoImplToJson(
      this,
    );
  }
}

abstract class _CreateAccountDto implements CreateAccountDto {
  const factory _CreateAccountDto({required final String email, required final String password}) = _$CreateAccountDtoImpl;

  factory _CreateAccountDto.fromJson(Map<String, dynamic> json) = _$CreateAccountDtoImpl.fromJson;

  @override
  String get email;

  @override
  String get password;

  @override
  @JsonKey(ignore: true)
  _$$CreateAccountDtoImplCopyWith<_$CreateAccountDtoImpl> get copyWith => throw _privateConstructorUsedError;
}
