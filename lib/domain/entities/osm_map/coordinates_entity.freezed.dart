// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coordinates_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CoordinatesEntity {
  double get lat;
  double get lon;

  /// Create a copy of CoordinatesEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CoordinatesEntityCopyWith<CoordinatesEntity> get copyWith =>
      _$CoordinatesEntityCopyWithImpl<CoordinatesEntity>(this as CoordinatesEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CoordinatesEntity &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lat, lon);

  @override
  String toString() {
    return 'CoordinatesEntity(lat: $lat, lon: $lon)';
  }
}

/// @nodoc
abstract mixin class $CoordinatesEntityCopyWith<$Res> {
  factory $CoordinatesEntityCopyWith(CoordinatesEntity value, $Res Function(CoordinatesEntity) _then) =
      _$CoordinatesEntityCopyWithImpl;
  @useResult
  $Res call({double lat, double lon});
}

/// @nodoc
class _$CoordinatesEntityCopyWithImpl<$Res> implements $CoordinatesEntityCopyWith<$Res> {
  _$CoordinatesEntityCopyWithImpl(this._self, this._then);

  final CoordinatesEntity _self;
  final $Res Function(CoordinatesEntity) _then;

  /// Create a copy of CoordinatesEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lon = null,
  }) {
    return _then(_self.copyWith(
      lat: null == lat
          ? _self.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: null == lon
          ? _self.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _CoordinatesEntity implements CoordinatesEntity {
  const _CoordinatesEntity({required this.lat, required this.lon});

  @override
  final double lat;
  @override
  final double lon;

  /// Create a copy of CoordinatesEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CoordinatesEntityCopyWith<_CoordinatesEntity> get copyWith =>
      __$CoordinatesEntityCopyWithImpl<_CoordinatesEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CoordinatesEntity &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lat, lon);

  @override
  String toString() {
    return 'CoordinatesEntity(lat: $lat, lon: $lon)';
  }
}

/// @nodoc
abstract mixin class _$CoordinatesEntityCopyWith<$Res> implements $CoordinatesEntityCopyWith<$Res> {
  factory _$CoordinatesEntityCopyWith(_CoordinatesEntity value, $Res Function(_CoordinatesEntity) _then) =
      __$CoordinatesEntityCopyWithImpl;
  @override
  @useResult
  $Res call({double lat, double lon});
}

/// @nodoc
class __$CoordinatesEntityCopyWithImpl<$Res> implements _$CoordinatesEntityCopyWith<$Res> {
  __$CoordinatesEntityCopyWithImpl(this._self, this._then);

  final _CoordinatesEntity _self;
  final $Res Function(_CoordinatesEntity) _then;

  /// Create a copy of CoordinatesEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? lat = null,
    Object? lon = null,
  }) {
    return _then(_CoordinatesEntity(
      lat: null == lat
          ? _self.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: null == lon
          ? _self.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

// dart format on
