// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_user_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateUserEntity {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateUserEntityCopyWith<CreateUserEntity> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateUserEntityCopyWith<$Res> {
  factory $CreateUserEntityCopyWith(CreateUserEntity value, $Res Function(CreateUserEntity) then) =
      _$CreateUserEntityCopyWithImpl<$Res, CreateUserEntity>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$CreateUserEntityCopyWithImpl<$Res, $Val extends CreateUserEntity> implements $CreateUserEntityCopyWith<$Res> {
  _$CreateUserEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$CreateUserEntityImplCopyWith<$Res> implements $CreateUserEntityCopyWith<$Res> {
  factory _$$CreateUserEntityImplCopyWith(_$CreateUserEntityImpl value, $Res Function(_$CreateUserEntityImpl) then) =
      __$$CreateUserEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$CreateUserEntityImplCopyWithImpl<$Res> extends _$CreateUserEntityCopyWithImpl<$Res, _$CreateUserEntityImpl>
    implements _$$CreateUserEntityImplCopyWith<$Res> {
  __$$CreateUserEntityImplCopyWithImpl(_$CreateUserEntityImpl _value, $Res Function(_$CreateUserEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$CreateUserEntityImpl(
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

class _$CreateUserEntityImpl implements _CreateUserEntity {
  const _$CreateUserEntityImpl({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'CreateUserEntity(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateUserEntityImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) || other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateUserEntityImplCopyWith<_$CreateUserEntityImpl> get copyWith =>
      __$$CreateUserEntityImplCopyWithImpl<_$CreateUserEntityImpl>(this, _$identity);
}

abstract class _CreateUserEntity implements CreateUserEntity {
  const factory _CreateUserEntity({required final String email, required final String password}) =
      _$CreateUserEntityImpl;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$CreateUserEntityImplCopyWith<_$CreateUserEntityImpl> get copyWith => throw _privateConstructorUsedError;
}
