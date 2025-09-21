// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LocationDto {
  String get id;
  String get userId;
  String get countryCode;
  String get cityName;
  DateTime get insertedAt;
  DateTime get updatedAt;

  /// Create a copy of LocationDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LocationDtoCopyWith<LocationDto> get copyWith =>
      _$LocationDtoCopyWithImpl<LocationDto>(this as LocationDto, _$identity);

  /// Serializes this LocationDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LocationDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.countryCode, countryCode) || other.countryCode == countryCode) &&
            (identical(other.cityName, cityName) || other.cityName == cityName) &&
            (identical(other.insertedAt, insertedAt) || other.insertedAt == insertedAt) &&
            (identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, countryCode, cityName, insertedAt, updatedAt);

  @override
  String toString() {
    return 'LocationDto(id: $id, userId: $userId, countryCode: $countryCode, cityName: $cityName, insertedAt: $insertedAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $LocationDtoCopyWith<$Res> {
  factory $LocationDtoCopyWith(LocationDto value, $Res Function(LocationDto) _then) = _$LocationDtoCopyWithImpl;
  @useResult
  $Res call({String id, String userId, String countryCode, String cityName, DateTime insertedAt, DateTime updatedAt});
}

/// @nodoc
class _$LocationDtoCopyWithImpl<$Res> implements $LocationDtoCopyWith<$Res> {
  _$LocationDtoCopyWithImpl(this._self, this._then);

  final LocationDto _self;
  final $Res Function(LocationDto) _then;

  /// Create a copy of LocationDto
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

/// Adds pattern-matching-related methods to [LocationDto].
extension LocationDtoPatterns on LocationDto {
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
    TResult Function(_LocationDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LocationDto() when $default != null:
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
    TResult Function(_LocationDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LocationDto():
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
    TResult? Function(_LocationDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LocationDto() when $default != null:
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
    TResult Function(
            String id, String userId, String countryCode, String cityName, DateTime insertedAt, DateTime updatedAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LocationDto() when $default != null:
        return $default(_that.id, _that.userId, _that.countryCode, _that.cityName, _that.insertedAt, _that.updatedAt);
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
    TResult Function(
            String id, String userId, String countryCode, String cityName, DateTime insertedAt, DateTime updatedAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LocationDto():
        return $default(_that.id, _that.userId, _that.countryCode, _that.cityName, _that.insertedAt, _that.updatedAt);
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
    TResult? Function(
            String id, String userId, String countryCode, String cityName, DateTime insertedAt, DateTime updatedAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LocationDto() when $default != null:
        return $default(_that.id, _that.userId, _that.countryCode, _that.cityName, _that.insertedAt, _that.updatedAt);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _LocationDto implements LocationDto {
  const _LocationDto(
      {required this.id,
      required this.userId,
      required this.countryCode,
      required this.cityName,
      required this.insertedAt,
      required this.updatedAt});
  factory _LocationDto.fromJson(Map<String, dynamic> json) => _$LocationDtoFromJson(json);

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

  /// Create a copy of LocationDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LocationDtoCopyWith<_LocationDto> get copyWith => __$LocationDtoCopyWithImpl<_LocationDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LocationDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LocationDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.countryCode, countryCode) || other.countryCode == countryCode) &&
            (identical(other.cityName, cityName) || other.cityName == cityName) &&
            (identical(other.insertedAt, insertedAt) || other.insertedAt == insertedAt) &&
            (identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, countryCode, cityName, insertedAt, updatedAt);

  @override
  String toString() {
    return 'LocationDto(id: $id, userId: $userId, countryCode: $countryCode, cityName: $cityName, insertedAt: $insertedAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$LocationDtoCopyWith<$Res> implements $LocationDtoCopyWith<$Res> {
  factory _$LocationDtoCopyWith(_LocationDto value, $Res Function(_LocationDto) _then) = __$LocationDtoCopyWithImpl;
  @override
  @useResult
  $Res call({String id, String userId, String countryCode, String cityName, DateTime insertedAt, DateTime updatedAt});
}

/// @nodoc
class __$LocationDtoCopyWithImpl<$Res> implements _$LocationDtoCopyWith<$Res> {
  __$LocationDtoCopyWithImpl(this._self, this._then);

  final _LocationDto _self;
  final $Res Function(_LocationDto) _then;

  /// Create a copy of LocationDto
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
    return _then(_LocationDto(
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
