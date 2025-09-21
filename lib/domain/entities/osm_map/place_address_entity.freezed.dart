// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_address_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PlaceAddressEntity {
  String get country;
  String get countryCode;
  String? get houseNumber;
  String? get road;
  String? get quarter;
  String? get suburb;
  String? get city;
  String? get state;
  String? get postcode;

  /// Create a copy of PlaceAddressEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PlaceAddressEntityCopyWith<PlaceAddressEntity> get copyWith =>
      _$PlaceAddressEntityCopyWithImpl<PlaceAddressEntity>(this as PlaceAddressEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PlaceAddressEntity &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.countryCode, countryCode) || other.countryCode == countryCode) &&
            (identical(other.houseNumber, houseNumber) || other.houseNumber == houseNumber) &&
            (identical(other.road, road) || other.road == road) &&
            (identical(other.quarter, quarter) || other.quarter == quarter) &&
            (identical(other.suburb, suburb) || other.suburb == suburb) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.postcode, postcode) || other.postcode == postcode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, country, countryCode, houseNumber, road, quarter, suburb, city, state, postcode);

  @override
  String toString() {
    return 'PlaceAddressEntity(country: $country, countryCode: $countryCode, houseNumber: $houseNumber, road: $road, quarter: $quarter, suburb: $suburb, city: $city, state: $state, postcode: $postcode)';
  }
}

/// @nodoc
abstract mixin class $PlaceAddressEntityCopyWith<$Res> {
  factory $PlaceAddressEntityCopyWith(PlaceAddressEntity value, $Res Function(PlaceAddressEntity) _then) =
      _$PlaceAddressEntityCopyWithImpl;
  @useResult
  $Res call(
      {String country,
      String countryCode,
      String? houseNumber,
      String? road,
      String? quarter,
      String? suburb,
      String? city,
      String? state,
      String? postcode});
}

/// @nodoc
class _$PlaceAddressEntityCopyWithImpl<$Res> implements $PlaceAddressEntityCopyWith<$Res> {
  _$PlaceAddressEntityCopyWithImpl(this._self, this._then);

  final PlaceAddressEntity _self;
  final $Res Function(PlaceAddressEntity) _then;

  /// Create a copy of PlaceAddressEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = null,
    Object? countryCode = null,
    Object? houseNumber = freezed,
    Object? road = freezed,
    Object? quarter = freezed,
    Object? suburb = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? postcode = freezed,
  }) {
    return _then(_self.copyWith(
      country: null == country
          ? _self.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: null == countryCode
          ? _self.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      houseNumber: freezed == houseNumber
          ? _self.houseNumber
          : houseNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      road: freezed == road
          ? _self.road
          : road // ignore: cast_nullable_to_non_nullable
              as String?,
      quarter: freezed == quarter
          ? _self.quarter
          : quarter // ignore: cast_nullable_to_non_nullable
              as String?,
      suburb: freezed == suburb
          ? _self.suburb
          : suburb // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _self.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      postcode: freezed == postcode
          ? _self.postcode
          : postcode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [PlaceAddressEntity].
extension PlaceAddressEntityPatterns on PlaceAddressEntity {
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
    TResult Function(_PlaceAddressEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PlaceAddressEntity() when $default != null:
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
    TResult Function(_PlaceAddressEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PlaceAddressEntity():
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
    TResult? Function(_PlaceAddressEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PlaceAddressEntity() when $default != null:
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
    TResult Function(String country, String countryCode, String? houseNumber, String? road, String? quarter,
            String? suburb, String? city, String? state, String? postcode)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PlaceAddressEntity() when $default != null:
        return $default(_that.country, _that.countryCode, _that.houseNumber, _that.road, _that.quarter, _that.suburb,
            _that.city, _that.state, _that.postcode);
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
    TResult Function(String country, String countryCode, String? houseNumber, String? road, String? quarter,
            String? suburb, String? city, String? state, String? postcode)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PlaceAddressEntity():
        return $default(_that.country, _that.countryCode, _that.houseNumber, _that.road, _that.quarter, _that.suburb,
            _that.city, _that.state, _that.postcode);
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
    TResult? Function(String country, String countryCode, String? houseNumber, String? road, String? quarter,
            String? suburb, String? city, String? state, String? postcode)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PlaceAddressEntity() when $default != null:
        return $default(_that.country, _that.countryCode, _that.houseNumber, _that.road, _that.quarter, _that.suburb,
            _that.city, _that.state, _that.postcode);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _PlaceAddressEntity implements PlaceAddressEntity {
  const _PlaceAddressEntity(
      {required this.country,
      required this.countryCode,
      this.houseNumber,
      this.road,
      this.quarter,
      this.suburb,
      this.city,
      this.state,
      this.postcode});

  @override
  final String country;
  @override
  final String countryCode;
  @override
  final String? houseNumber;
  @override
  final String? road;
  @override
  final String? quarter;
  @override
  final String? suburb;
  @override
  final String? city;
  @override
  final String? state;
  @override
  final String? postcode;

  /// Create a copy of PlaceAddressEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PlaceAddressEntityCopyWith<_PlaceAddressEntity> get copyWith =>
      __$PlaceAddressEntityCopyWithImpl<_PlaceAddressEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlaceAddressEntity &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.countryCode, countryCode) || other.countryCode == countryCode) &&
            (identical(other.houseNumber, houseNumber) || other.houseNumber == houseNumber) &&
            (identical(other.road, road) || other.road == road) &&
            (identical(other.quarter, quarter) || other.quarter == quarter) &&
            (identical(other.suburb, suburb) || other.suburb == suburb) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.postcode, postcode) || other.postcode == postcode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, country, countryCode, houseNumber, road, quarter, suburb, city, state, postcode);

  @override
  String toString() {
    return 'PlaceAddressEntity(country: $country, countryCode: $countryCode, houseNumber: $houseNumber, road: $road, quarter: $quarter, suburb: $suburb, city: $city, state: $state, postcode: $postcode)';
  }
}

/// @nodoc
abstract mixin class _$PlaceAddressEntityCopyWith<$Res> implements $PlaceAddressEntityCopyWith<$Res> {
  factory _$PlaceAddressEntityCopyWith(_PlaceAddressEntity value, $Res Function(_PlaceAddressEntity) _then) =
      __$PlaceAddressEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String country,
      String countryCode,
      String? houseNumber,
      String? road,
      String? quarter,
      String? suburb,
      String? city,
      String? state,
      String? postcode});
}

/// @nodoc
class __$PlaceAddressEntityCopyWithImpl<$Res> implements _$PlaceAddressEntityCopyWith<$Res> {
  __$PlaceAddressEntityCopyWithImpl(this._self, this._then);

  final _PlaceAddressEntity _self;
  final $Res Function(_PlaceAddressEntity) _then;

  /// Create a copy of PlaceAddressEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? country = null,
    Object? countryCode = null,
    Object? houseNumber = freezed,
    Object? road = freezed,
    Object? quarter = freezed,
    Object? suburb = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? postcode = freezed,
  }) {
    return _then(_PlaceAddressEntity(
      country: null == country
          ? _self.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: null == countryCode
          ? _self.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      houseNumber: freezed == houseNumber
          ? _self.houseNumber
          : houseNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      road: freezed == road
          ? _self.road
          : road // ignore: cast_nullable_to_non_nullable
              as String?,
      quarter: freezed == quarter
          ? _self.quarter
          : quarter // ignore: cast_nullable_to_non_nullable
              as String?,
      suburb: freezed == suburb
          ? _self.suburb
          : suburb // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _self.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      postcode: freezed == postcode
          ? _self.postcode
          : postcode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
