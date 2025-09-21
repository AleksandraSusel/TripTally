// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
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

/// Adds pattern-matching-related methods to [CoordinatesEntity].
extension CoordinatesEntityPatterns on CoordinatesEntity {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CoordinatesEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CoordinatesEntity() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CoordinatesEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CoordinatesEntity():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CoordinatesEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CoordinatesEntity() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(double lat, double lon)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CoordinatesEntity() when $default != null:
        return $default(_that.lat, _that.lon);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(double lat, double lon) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CoordinatesEntity():
        return $default(_that.lat, _that.lon);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(double lat, double lon)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CoordinatesEntity() when $default != null:
        return $default(_that.lat, _that.lon);
      case _:
        return null;
    }
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
