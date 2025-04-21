// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LocationEntity {
  String get id;
  String get userId;
  String get countryCode;
  String get cityName;
  DateTime get insertedAt;
  DateTime get updatedAt;

  /// Create a copy of LocationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LocationEntityCopyWith<LocationEntity> get copyWith =>
      _$LocationEntityCopyWithImpl<LocationEntity>(this as LocationEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LocationEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.countryCode, countryCode) || other.countryCode == countryCode) &&
            (identical(other.cityName, cityName) || other.cityName == cityName) &&
            (identical(other.insertedAt, insertedAt) || other.insertedAt == insertedAt) &&
            (identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, userId, countryCode, cityName, insertedAt, updatedAt);

  @override
  String toString() {
    return 'LocationEntity(id: $id, userId: $userId, countryCode: $countryCode, cityName: $cityName, insertedAt: $insertedAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $LocationEntityCopyWith<$Res> {
  factory $LocationEntityCopyWith(LocationEntity value, $Res Function(LocationEntity) _then) =
      _$LocationEntityCopyWithImpl;
  @useResult
  $Res call({String id, String userId, String countryCode, String cityName, DateTime insertedAt, DateTime updatedAt});
}

/// @nodoc
class _$LocationEntityCopyWithImpl<$Res> implements $LocationEntityCopyWith<$Res> {
  _$LocationEntityCopyWithImpl(this._self, this._then);

  final LocationEntity _self;
  final $Res Function(LocationEntity) _then;

  /// Create a copy of LocationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? countryCode = null,
    Object? cityName = null,
    Object? insertedAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: null == countryCode
          ? _self.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      cityName: null == cityName
          ? _self.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      insertedAt: null == insertedAt
          ? _self.insertedAt
          : insertedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _LocationEntity implements LocationEntity {
  const _LocationEntity(
      {required this.id,
      required this.userId,
      required this.countryCode,
      required this.cityName,
      required this.insertedAt,
      required this.updatedAt});

  @override
  final String id;
  @override
  final String userId;
  @override
  final String countryCode;
  @override
  final String cityName;
  @override
  final DateTime insertedAt;
  @override
  final DateTime updatedAt;

  /// Create a copy of LocationEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LocationEntityCopyWith<_LocationEntity> get copyWith =>
      __$LocationEntityCopyWithImpl<_LocationEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LocationEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.countryCode, countryCode) || other.countryCode == countryCode) &&
            (identical(other.cityName, cityName) || other.cityName == cityName) &&
            (identical(other.insertedAt, insertedAt) || other.insertedAt == insertedAt) &&
            (identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, userId, countryCode, cityName, insertedAt, updatedAt);

  @override
  String toString() {
    return 'LocationEntity(id: $id, userId: $userId, countryCode: $countryCode, cityName: $cityName, insertedAt: $insertedAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$LocationEntityCopyWith<$Res> implements $LocationEntityCopyWith<$Res> {
  factory _$LocationEntityCopyWith(_LocationEntity value, $Res Function(_LocationEntity) _then) =
      __$LocationEntityCopyWithImpl;
  @override
  @useResult
  $Res call({String id, String userId, String countryCode, String cityName, DateTime insertedAt, DateTime updatedAt});
}

/// @nodoc
class __$LocationEntityCopyWithImpl<$Res> implements _$LocationEntityCopyWith<$Res> {
  __$LocationEntityCopyWithImpl(this._self, this._then);

  final _LocationEntity _self;
  final $Res Function(_LocationEntity) _then;

  /// Create a copy of LocationEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? countryCode = null,
    Object? cityName = null,
    Object? insertedAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_LocationEntity(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: null == countryCode
          ? _self.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      cityName: null == cityName
          ? _self.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      insertedAt: null == insertedAt
          ? _self.insertedAt
          : insertedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

// dart format on
