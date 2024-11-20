// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_location_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateLocationEntity {
  String get countryCode => throw _privateConstructorUsedError;
  String get cityName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateLocationEntityCopyWith<CreateLocationEntity> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateLocationEntityCopyWith<$Res> {
  factory $CreateLocationEntityCopyWith(CreateLocationEntity value, $Res Function(CreateLocationEntity) then) =
      _$CreateLocationEntityCopyWithImpl<$Res, CreateLocationEntity>;
  @useResult
  $Res call({String countryCode, String cityName});
}

/// @nodoc
class _$CreateLocationEntityCopyWithImpl<$Res, $Val extends CreateLocationEntity>
    implements $CreateLocationEntityCopyWith<$Res> {
  _$CreateLocationEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryCode = null,
    Object? cityName = null,
  }) {
    return _then(_value.copyWith(
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      cityName: null == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateLocationEntityImplCopyWith<$Res> implements $CreateLocationEntityCopyWith<$Res> {
  factory _$$CreateLocationEntityImplCopyWith(
          _$CreateLocationEntityImpl value, $Res Function(_$CreateLocationEntityImpl) then) =
      __$$CreateLocationEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String countryCode, String cityName});
}

/// @nodoc
class __$$CreateLocationEntityImplCopyWithImpl<$Res>
    extends _$CreateLocationEntityCopyWithImpl<$Res, _$CreateLocationEntityImpl>
    implements _$$CreateLocationEntityImplCopyWith<$Res> {
  __$$CreateLocationEntityImplCopyWithImpl(
      _$CreateLocationEntityImpl _value, $Res Function(_$CreateLocationEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryCode = null,
    Object? cityName = null,
  }) {
    return _then(_$CreateLocationEntityImpl(
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      cityName: null == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateLocationEntityImpl implements _CreateLocationEntity {
  const _$CreateLocationEntityImpl({required this.countryCode, required this.cityName});

  @override
  final String countryCode;
  @override
  final String cityName;

  @override
  String toString() {
    return 'CreateLocationEntity(countryCode: $countryCode, cityName: $cityName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateLocationEntityImpl &&
            (identical(other.countryCode, countryCode) || other.countryCode == countryCode) &&
            (identical(other.cityName, cityName) || other.cityName == cityName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, countryCode, cityName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateLocationEntityImplCopyWith<_$CreateLocationEntityImpl> get copyWith =>
      __$$CreateLocationEntityImplCopyWithImpl<_$CreateLocationEntityImpl>(this, _$identity);
}

abstract class _CreateLocationEntity implements CreateLocationEntity {
  const factory _CreateLocationEntity({required final String countryCode, required final String cityName}) =
      _$CreateLocationEntityImpl;

  @override
  String get countryCode;
  @override
  String get cityName;
  @override
  @JsonKey(ignore: true)
  _$$CreateLocationEntityImplCopyWith<_$CreateLocationEntityImpl> get copyWith => throw _privateConstructorUsedError;
}
