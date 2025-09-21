// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_user_profile_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateUserProfileEntity {
  String get username;
  String get country;
  String get defaultCurrencyCode;
  XFile? get profilePicture;

  /// Create a copy of UpdateUserProfileEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateUserProfileEntityCopyWith<UpdateUserProfileEntity> get copyWith =>
      _$UpdateUserProfileEntityCopyWithImpl<UpdateUserProfileEntity>(this as UpdateUserProfileEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateUserProfileEntity &&
            (identical(other.username, username) || other.username == username) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.defaultCurrencyCode, defaultCurrencyCode) ||
                other.defaultCurrencyCode == defaultCurrencyCode) &&
            (identical(other.profilePicture, profilePicture) || other.profilePicture == profilePicture));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username, country, defaultCurrencyCode, profilePicture);

  @override
  String toString() {
    return 'UpdateUserProfileEntity(username: $username, country: $country, defaultCurrencyCode: $defaultCurrencyCode, profilePicture: $profilePicture)';
  }
}

/// @nodoc
abstract mixin class $UpdateUserProfileEntityCopyWith<$Res> {
  factory $UpdateUserProfileEntityCopyWith(
          UpdateUserProfileEntity value, $Res Function(UpdateUserProfileEntity) _then) =
      _$UpdateUserProfileEntityCopyWithImpl;
  @useResult
  $Res call({String username, String country, String defaultCurrencyCode, XFile? profilePicture});
}

/// @nodoc
class _$UpdateUserProfileEntityCopyWithImpl<$Res> implements $UpdateUserProfileEntityCopyWith<$Res> {
  _$UpdateUserProfileEntityCopyWithImpl(this._self, this._then);

  final UpdateUserProfileEntity _self;
  final $Res Function(UpdateUserProfileEntity) _then;

  /// Create a copy of UpdateUserProfileEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? country = null,
    Object? defaultCurrencyCode = null,
    Object? profilePicture = freezed,
  }) {
    return _then(_self.copyWith(
      username: null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _self.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      defaultCurrencyCode: null == defaultCurrencyCode
          ? _self.defaultCurrencyCode
          : defaultCurrencyCode // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicture: freezed == profilePicture
          ? _self.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ));
  }
}

/// Adds pattern-matching-related methods to [UpdateUserProfileEntity].
extension UpdateUserProfileEntityPatterns on UpdateUserProfileEntity {
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
    TResult Function(_UpdateUserProfileEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateUserProfileEntity() when $default != null:
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
    TResult Function(_UpdateUserProfileEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateUserProfileEntity():
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
    TResult? Function(_UpdateUserProfileEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateUserProfileEntity() when $default != null:
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
    TResult Function(String username, String country, String defaultCurrencyCode, XFile? profilePicture)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateUserProfileEntity() when $default != null:
        return $default(_that.username, _that.country, _that.defaultCurrencyCode, _that.profilePicture);
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
    TResult Function(String username, String country, String defaultCurrencyCode, XFile? profilePicture) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateUserProfileEntity():
        return $default(_that.username, _that.country, _that.defaultCurrencyCode, _that.profilePicture);
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
    TResult? Function(String username, String country, String defaultCurrencyCode, XFile? profilePicture)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateUserProfileEntity() when $default != null:
        return $default(_that.username, _that.country, _that.defaultCurrencyCode, _that.profilePicture);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _UpdateUserProfileEntity implements UpdateUserProfileEntity {
  const _UpdateUserProfileEntity(
      {required this.username, required this.country, required this.defaultCurrencyCode, this.profilePicture});

  @override
  final String username;
  @override
  final String country;
  @override
  final String defaultCurrencyCode;
  @override
  final XFile? profilePicture;

  /// Create a copy of UpdateUserProfileEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdateUserProfileEntityCopyWith<_UpdateUserProfileEntity> get copyWith =>
      __$UpdateUserProfileEntityCopyWithImpl<_UpdateUserProfileEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateUserProfileEntity &&
            (identical(other.username, username) || other.username == username) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.defaultCurrencyCode, defaultCurrencyCode) ||
                other.defaultCurrencyCode == defaultCurrencyCode) &&
            (identical(other.profilePicture, profilePicture) || other.profilePicture == profilePicture));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username, country, defaultCurrencyCode, profilePicture);

  @override
  String toString() {
    return 'UpdateUserProfileEntity(username: $username, country: $country, defaultCurrencyCode: $defaultCurrencyCode, profilePicture: $profilePicture)';
  }
}

/// @nodoc
abstract mixin class _$UpdateUserProfileEntityCopyWith<$Res> implements $UpdateUserProfileEntityCopyWith<$Res> {
  factory _$UpdateUserProfileEntityCopyWith(
          _UpdateUserProfileEntity value, $Res Function(_UpdateUserProfileEntity) _then) =
      __$UpdateUserProfileEntityCopyWithImpl;
  @override
  @useResult
  $Res call({String username, String country, String defaultCurrencyCode, XFile? profilePicture});
}

/// @nodoc
class __$UpdateUserProfileEntityCopyWithImpl<$Res> implements _$UpdateUserProfileEntityCopyWith<$Res> {
  __$UpdateUserProfileEntityCopyWithImpl(this._self, this._then);

  final _UpdateUserProfileEntity _self;
  final $Res Function(_UpdateUserProfileEntity) _then;

  /// Create a copy of UpdateUserProfileEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? username = null,
    Object? country = null,
    Object? defaultCurrencyCode = null,
    Object? profilePicture = freezed,
  }) {
    return _then(_UpdateUserProfileEntity(
      username: null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _self.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      defaultCurrencyCode: null == defaultCurrencyCode
          ? _self.defaultCurrencyCode
          : defaultCurrencyCode // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicture: freezed == profilePicture
          ? _self.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ));
  }
}

// dart format on
