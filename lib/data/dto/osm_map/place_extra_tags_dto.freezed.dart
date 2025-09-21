// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_extra_tags_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PlaceExtraTagsDto {
  String? get lunch;
  String? get cuisine;
  String? get website;
  String? get wheelchair;
  String? get openingHours;
  String? get indoorSeating;
  String? get outdoorSeating;
  String? get reusablePackagingOffer;
  String? get toilets;
  @JsonKey(name: 'toilets:wheelchair')
  String? get toiletsWheelchair;
  String? get phone;
  String? get image;

  /// Create a copy of PlaceExtraTagsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PlaceExtraTagsDtoCopyWith<PlaceExtraTagsDto> get copyWith =>
      _$PlaceExtraTagsDtoCopyWithImpl<PlaceExtraTagsDto>(this as PlaceExtraTagsDto, _$identity);

  /// Serializes this PlaceExtraTagsDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PlaceExtraTagsDto &&
            (identical(other.lunch, lunch) || other.lunch == lunch) &&
            (identical(other.cuisine, cuisine) || other.cuisine == cuisine) &&
            (identical(other.website, website) || other.website == website) &&
            (identical(other.wheelchair, wheelchair) || other.wheelchair == wheelchair) &&
            (identical(other.openingHours, openingHours) || other.openingHours == openingHours) &&
            (identical(other.indoorSeating, indoorSeating) || other.indoorSeating == indoorSeating) &&
            (identical(other.outdoorSeating, outdoorSeating) || other.outdoorSeating == outdoorSeating) &&
            (identical(other.reusablePackagingOffer, reusablePackagingOffer) ||
                other.reusablePackagingOffer == reusablePackagingOffer) &&
            (identical(other.toilets, toilets) || other.toilets == toilets) &&
            (identical(other.toiletsWheelchair, toiletsWheelchair) || other.toiletsWheelchair == toiletsWheelchair) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, lunch, cuisine, website, wheelchair, openingHours, indoorSeating,
      outdoorSeating, reusablePackagingOffer, toilets, toiletsWheelchair, phone, image);

  @override
  String toString() {
    return 'PlaceExtraTagsDto(lunch: $lunch, cuisine: $cuisine, website: $website, wheelchair: $wheelchair, openingHours: $openingHours, indoorSeating: $indoorSeating, outdoorSeating: $outdoorSeating, reusablePackagingOffer: $reusablePackagingOffer, toilets: $toilets, toiletsWheelchair: $toiletsWheelchair, phone: $phone, image: $image)';
  }
}

/// @nodoc
abstract mixin class $PlaceExtraTagsDtoCopyWith<$Res> {
  factory $PlaceExtraTagsDtoCopyWith(PlaceExtraTagsDto value, $Res Function(PlaceExtraTagsDto) _then) =
      _$PlaceExtraTagsDtoCopyWithImpl;
  @useResult
  $Res call(
      {String? lunch,
      String? cuisine,
      String? website,
      String? wheelchair,
      String? openingHours,
      String? indoorSeating,
      String? outdoorSeating,
      String? reusablePackagingOffer,
      String? toilets,
      @JsonKey(name: 'toilets:wheelchair') String? toiletsWheelchair,
      String? phone,
      String? image});
}

/// @nodoc
class _$PlaceExtraTagsDtoCopyWithImpl<$Res> implements $PlaceExtraTagsDtoCopyWith<$Res> {
  _$PlaceExtraTagsDtoCopyWithImpl(this._self, this._then);

  final PlaceExtraTagsDto _self;
  final $Res Function(PlaceExtraTagsDto) _then;

  /// Create a copy of PlaceExtraTagsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lunch = freezed,
    Object? cuisine = freezed,
    Object? website = freezed,
    Object? wheelchair = freezed,
    Object? openingHours = freezed,
    Object? indoorSeating = freezed,
    Object? outdoorSeating = freezed,
    Object? reusablePackagingOffer = freezed,
    Object? toilets = freezed,
    Object? toiletsWheelchair = freezed,
    Object? phone = freezed,
    Object? image = freezed,
  }) {
    return _then(_self.copyWith(
      lunch: freezed == lunch
          ? _self.lunch
          : lunch // ignore: cast_nullable_to_non_nullable
              as String?,
      cuisine: freezed == cuisine
          ? _self.cuisine
          : cuisine // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _self.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      wheelchair: freezed == wheelchair
          ? _self.wheelchair
          : wheelchair // ignore: cast_nullable_to_non_nullable
              as String?,
      openingHours: freezed == openingHours
          ? _self.openingHours
          : openingHours // ignore: cast_nullable_to_non_nullable
              as String?,
      indoorSeating: freezed == indoorSeating
          ? _self.indoorSeating
          : indoorSeating // ignore: cast_nullable_to_non_nullable
              as String?,
      outdoorSeating: freezed == outdoorSeating
          ? _self.outdoorSeating
          : outdoorSeating // ignore: cast_nullable_to_non_nullable
              as String?,
      reusablePackagingOffer: freezed == reusablePackagingOffer
          ? _self.reusablePackagingOffer
          : reusablePackagingOffer // ignore: cast_nullable_to_non_nullable
              as String?,
      toilets: freezed == toilets
          ? _self.toilets
          : toilets // ignore: cast_nullable_to_non_nullable
              as String?,
      toiletsWheelchair: freezed == toiletsWheelchair
          ? _self.toiletsWheelchair
          : toiletsWheelchair // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [PlaceExtraTagsDto].
extension PlaceExtraTagsDtoPatterns on PlaceExtraTagsDto {
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
    TResult Function(_PlaceExtraTagsDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PlaceExtraTagsDto() when $default != null:
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
    TResult Function(_PlaceExtraTagsDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PlaceExtraTagsDto():
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
    TResult? Function(_PlaceExtraTagsDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PlaceExtraTagsDto() when $default != null:
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
            String? lunch,
            String? cuisine,
            String? website,
            String? wheelchair,
            String? openingHours,
            String? indoorSeating,
            String? outdoorSeating,
            String? reusablePackagingOffer,
            String? toilets,
            @JsonKey(name: 'toilets:wheelchair') String? toiletsWheelchair,
            String? phone,
            String? image)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PlaceExtraTagsDto() when $default != null:
        return $default(
            _that.lunch,
            _that.cuisine,
            _that.website,
            _that.wheelchair,
            _that.openingHours,
            _that.indoorSeating,
            _that.outdoorSeating,
            _that.reusablePackagingOffer,
            _that.toilets,
            _that.toiletsWheelchair,
            _that.phone,
            _that.image);
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
            String? lunch,
            String? cuisine,
            String? website,
            String? wheelchair,
            String? openingHours,
            String? indoorSeating,
            String? outdoorSeating,
            String? reusablePackagingOffer,
            String? toilets,
            @JsonKey(name: 'toilets:wheelchair') String? toiletsWheelchair,
            String? phone,
            String? image)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PlaceExtraTagsDto():
        return $default(
            _that.lunch,
            _that.cuisine,
            _that.website,
            _that.wheelchair,
            _that.openingHours,
            _that.indoorSeating,
            _that.outdoorSeating,
            _that.reusablePackagingOffer,
            _that.toilets,
            _that.toiletsWheelchair,
            _that.phone,
            _that.image);
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
            String? lunch,
            String? cuisine,
            String? website,
            String? wheelchair,
            String? openingHours,
            String? indoorSeating,
            String? outdoorSeating,
            String? reusablePackagingOffer,
            String? toilets,
            @JsonKey(name: 'toilets:wheelchair') String? toiletsWheelchair,
            String? phone,
            String? image)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PlaceExtraTagsDto() when $default != null:
        return $default(
            _that.lunch,
            _that.cuisine,
            _that.website,
            _that.wheelchair,
            _that.openingHours,
            _that.indoorSeating,
            _that.outdoorSeating,
            _that.reusablePackagingOffer,
            _that.toilets,
            _that.toiletsWheelchair,
            _that.phone,
            _that.image);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PlaceExtraTagsDto implements PlaceExtraTagsDto {
  const _PlaceExtraTagsDto(
      {this.lunch,
      this.cuisine,
      this.website,
      this.wheelchair,
      this.openingHours,
      this.indoorSeating,
      this.outdoorSeating,
      this.reusablePackagingOffer,
      this.toilets,
      @JsonKey(name: 'toilets:wheelchair') this.toiletsWheelchair,
      this.phone,
      this.image});
  factory _PlaceExtraTagsDto.fromJson(Map<String, dynamic> json) => _$PlaceExtraTagsDtoFromJson(json);

  @override
  final String? lunch;
  @override
  final String? cuisine;
  @override
  final String? website;
  @override
  final String? wheelchair;
  @override
  final String? openingHours;
  @override
  final String? indoorSeating;
  @override
  final String? outdoorSeating;
  @override
  final String? reusablePackagingOffer;
  @override
  final String? toilets;
  @override
  @JsonKey(name: 'toilets:wheelchair')
  final String? toiletsWheelchair;
  @override
  final String? phone;
  @override
  final String? image;

  /// Create a copy of PlaceExtraTagsDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PlaceExtraTagsDtoCopyWith<_PlaceExtraTagsDto> get copyWith =>
      __$PlaceExtraTagsDtoCopyWithImpl<_PlaceExtraTagsDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PlaceExtraTagsDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlaceExtraTagsDto &&
            (identical(other.lunch, lunch) || other.lunch == lunch) &&
            (identical(other.cuisine, cuisine) || other.cuisine == cuisine) &&
            (identical(other.website, website) || other.website == website) &&
            (identical(other.wheelchair, wheelchair) || other.wheelchair == wheelchair) &&
            (identical(other.openingHours, openingHours) || other.openingHours == openingHours) &&
            (identical(other.indoorSeating, indoorSeating) || other.indoorSeating == indoorSeating) &&
            (identical(other.outdoorSeating, outdoorSeating) || other.outdoorSeating == outdoorSeating) &&
            (identical(other.reusablePackagingOffer, reusablePackagingOffer) ||
                other.reusablePackagingOffer == reusablePackagingOffer) &&
            (identical(other.toilets, toilets) || other.toilets == toilets) &&
            (identical(other.toiletsWheelchair, toiletsWheelchair) || other.toiletsWheelchair == toiletsWheelchair) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, lunch, cuisine, website, wheelchair, openingHours, indoorSeating,
      outdoorSeating, reusablePackagingOffer, toilets, toiletsWheelchair, phone, image);

  @override
  String toString() {
    return 'PlaceExtraTagsDto(lunch: $lunch, cuisine: $cuisine, website: $website, wheelchair: $wheelchair, openingHours: $openingHours, indoorSeating: $indoorSeating, outdoorSeating: $outdoorSeating, reusablePackagingOffer: $reusablePackagingOffer, toilets: $toilets, toiletsWheelchair: $toiletsWheelchair, phone: $phone, image: $image)';
  }
}

/// @nodoc
abstract mixin class _$PlaceExtraTagsDtoCopyWith<$Res> implements $PlaceExtraTagsDtoCopyWith<$Res> {
  factory _$PlaceExtraTagsDtoCopyWith(_PlaceExtraTagsDto value, $Res Function(_PlaceExtraTagsDto) _then) =
      __$PlaceExtraTagsDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? lunch,
      String? cuisine,
      String? website,
      String? wheelchair,
      String? openingHours,
      String? indoorSeating,
      String? outdoorSeating,
      String? reusablePackagingOffer,
      String? toilets,
      @JsonKey(name: 'toilets:wheelchair') String? toiletsWheelchair,
      String? phone,
      String? image});
}

/// @nodoc
class __$PlaceExtraTagsDtoCopyWithImpl<$Res> implements _$PlaceExtraTagsDtoCopyWith<$Res> {
  __$PlaceExtraTagsDtoCopyWithImpl(this._self, this._then);

  final _PlaceExtraTagsDto _self;
  final $Res Function(_PlaceExtraTagsDto) _then;

  /// Create a copy of PlaceExtraTagsDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? lunch = freezed,
    Object? cuisine = freezed,
    Object? website = freezed,
    Object? wheelchair = freezed,
    Object? openingHours = freezed,
    Object? indoorSeating = freezed,
    Object? outdoorSeating = freezed,
    Object? reusablePackagingOffer = freezed,
    Object? toilets = freezed,
    Object? toiletsWheelchair = freezed,
    Object? phone = freezed,
    Object? image = freezed,
  }) {
    return _then(_PlaceExtraTagsDto(
      lunch: freezed == lunch
          ? _self.lunch
          : lunch // ignore: cast_nullable_to_non_nullable
              as String?,
      cuisine: freezed == cuisine
          ? _self.cuisine
          : cuisine // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _self.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      wheelchair: freezed == wheelchair
          ? _self.wheelchair
          : wheelchair // ignore: cast_nullable_to_non_nullable
              as String?,
      openingHours: freezed == openingHours
          ? _self.openingHours
          : openingHours // ignore: cast_nullable_to_non_nullable
              as String?,
      indoorSeating: freezed == indoorSeating
          ? _self.indoorSeating
          : indoorSeating // ignore: cast_nullable_to_non_nullable
              as String?,
      outdoorSeating: freezed == outdoorSeating
          ? _self.outdoorSeating
          : outdoorSeating // ignore: cast_nullable_to_non_nullable
              as String?,
      reusablePackagingOffer: freezed == reusablePackagingOffer
          ? _self.reusablePackagingOffer
          : reusablePackagingOffer // ignore: cast_nullable_to_non_nullable
              as String?,
      toilets: freezed == toilets
          ? _self.toilets
          : toilets // ignore: cast_nullable_to_non_nullable
              as String?,
      toiletsWheelchair: freezed == toiletsWheelchair
          ? _self.toiletsWheelchair
          : toiletsWheelchair // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
