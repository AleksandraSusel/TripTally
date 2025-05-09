// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_location_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateLocationEntity {
  String get countryCode;
  String get cityName;

  /// Create a copy of CreateLocationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateLocationEntityCopyWith<CreateLocationEntity> get copyWith =>
      _$CreateLocationEntityCopyWithImpl<CreateLocationEntity>(this as CreateLocationEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateLocationEntity &&
            (identical(other.countryCode, countryCode) || other.countryCode == countryCode) &&
            (identical(other.cityName, cityName) || other.cityName == cityName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, countryCode, cityName);

  @override
  String toString() {
    return 'CreateLocationEntity(countryCode: $countryCode, cityName: $cityName)';
  }
}

/// @nodoc
abstract mixin class $CreateLocationEntityCopyWith<$Res> {
  factory $CreateLocationEntityCopyWith(CreateLocationEntity value, $Res Function(CreateLocationEntity) _then) =
      _$CreateLocationEntityCopyWithImpl;
  @useResult
  $Res call({String countryCode, String cityName});
}

/// @nodoc
class _$CreateLocationEntityCopyWithImpl<$Res> implements $CreateLocationEntityCopyWith<$Res> {
  _$CreateLocationEntityCopyWithImpl(this._self, this._then);

  final CreateLocationEntity _self;
  final $Res Function(CreateLocationEntity) _then;

  /// Create a copy of CreateLocationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryCode = null,
    Object? cityName = null,
  }) {
    return _then(_self.copyWith(
      countryCode: null == countryCode
          ? _self.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      cityName: null == cityName
          ? _self.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _CreateLocationEntity implements CreateLocationEntity {
  const _CreateLocationEntity({required this.countryCode, required this.cityName});

  @override
  final String countryCode;
  @override
  final String cityName;

  /// Create a copy of CreateLocationEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateLocationEntityCopyWith<_CreateLocationEntity> get copyWith =>
      __$CreateLocationEntityCopyWithImpl<_CreateLocationEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateLocationEntity &&
            (identical(other.countryCode, countryCode) || other.countryCode == countryCode) &&
            (identical(other.cityName, cityName) || other.cityName == cityName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, countryCode, cityName);

  @override
  String toString() {
    return 'CreateLocationEntity(countryCode: $countryCode, cityName: $cityName)';
  }
}

/// @nodoc
abstract mixin class _$CreateLocationEntityCopyWith<$Res> implements $CreateLocationEntityCopyWith<$Res> {
  factory _$CreateLocationEntityCopyWith(_CreateLocationEntity value, $Res Function(_CreateLocationEntity) _then) =
      __$CreateLocationEntityCopyWithImpl;
  @override
  @useResult
  $Res call({String countryCode, String cityName});
}

/// @nodoc
class __$CreateLocationEntityCopyWithImpl<$Res> implements _$CreateLocationEntityCopyWith<$Res> {
  __$CreateLocationEntityCopyWithImpl(this._self, this._then);

  final _CreateLocationEntity _self;
  final $Res Function(_CreateLocationEntity) _then;

  /// Create a copy of CreateLocationEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? countryCode = null,
    Object? cityName = null,
  }) {
    return _then(_CreateLocationEntity(
      countryCode: null == countryCode
          ? _self.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      cityName: null == cityName
          ? _self.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
