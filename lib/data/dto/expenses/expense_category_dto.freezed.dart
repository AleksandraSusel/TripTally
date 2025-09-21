// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expense_category_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ExpenseCategoryDto {
  String get id;
  String get name;
  String get translationKey;

  /// Create a copy of ExpenseCategoryDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ExpenseCategoryDtoCopyWith<ExpenseCategoryDto> get copyWith =>
      _$ExpenseCategoryDtoCopyWithImpl<ExpenseCategoryDto>(this as ExpenseCategoryDto, _$identity);

  /// Serializes this ExpenseCategoryDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ExpenseCategoryDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.translationKey, translationKey) || other.translationKey == translationKey));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, translationKey);

  @override
  String toString() {
    return 'ExpenseCategoryDto(id: $id, name: $name, translationKey: $translationKey)';
  }
}

/// @nodoc
abstract mixin class $ExpenseCategoryDtoCopyWith<$Res> {
  factory $ExpenseCategoryDtoCopyWith(ExpenseCategoryDto value, $Res Function(ExpenseCategoryDto) _then) =
      _$ExpenseCategoryDtoCopyWithImpl;
  @useResult
  $Res call({String id, String name, String translationKey});
}

/// @nodoc
class _$ExpenseCategoryDtoCopyWithImpl<$Res> implements $ExpenseCategoryDtoCopyWith<$Res> {
  _$ExpenseCategoryDtoCopyWithImpl(this._self, this._then);

  final ExpenseCategoryDto _self;
  final $Res Function(ExpenseCategoryDto) _then;

  /// Create a copy of ExpenseCategoryDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? translationKey = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      translationKey: null == translationKey
          ? _self.translationKey
          : translationKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [ExpenseCategoryDto].
extension ExpenseCategoryDtoPatterns on ExpenseCategoryDto {
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
    TResult Function(_ExpenseCategoryDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ExpenseCategoryDto() when $default != null:
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
    TResult Function(_ExpenseCategoryDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ExpenseCategoryDto():
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
    TResult? Function(_ExpenseCategoryDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ExpenseCategoryDto() when $default != null:
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
    TResult Function(String id, String name, String translationKey)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ExpenseCategoryDto() when $default != null:
        return $default(_that.id, _that.name, _that.translationKey);
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
    TResult Function(String id, String name, String translationKey) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ExpenseCategoryDto():
        return $default(_that.id, _that.name, _that.translationKey);
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
    TResult? Function(String id, String name, String translationKey)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ExpenseCategoryDto() when $default != null:
        return $default(_that.id, _that.name, _that.translationKey);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ExpenseCategoryDto implements ExpenseCategoryDto {
  const _ExpenseCategoryDto({required this.id, required this.name, required this.translationKey});
  factory _ExpenseCategoryDto.fromJson(Map<String, dynamic> json) => _$ExpenseCategoryDtoFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String translationKey;

  /// Create a copy of ExpenseCategoryDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ExpenseCategoryDtoCopyWith<_ExpenseCategoryDto> get copyWith =>
      __$ExpenseCategoryDtoCopyWithImpl<_ExpenseCategoryDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ExpenseCategoryDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ExpenseCategoryDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.translationKey, translationKey) || other.translationKey == translationKey));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, translationKey);

  @override
  String toString() {
    return 'ExpenseCategoryDto(id: $id, name: $name, translationKey: $translationKey)';
  }
}

/// @nodoc
abstract mixin class _$ExpenseCategoryDtoCopyWith<$Res> implements $ExpenseCategoryDtoCopyWith<$Res> {
  factory _$ExpenseCategoryDtoCopyWith(_ExpenseCategoryDto value, $Res Function(_ExpenseCategoryDto) _then) =
      __$ExpenseCategoryDtoCopyWithImpl;
  @override
  @useResult
  $Res call({String id, String name, String translationKey});
}

/// @nodoc
class __$ExpenseCategoryDtoCopyWithImpl<$Res> implements _$ExpenseCategoryDtoCopyWith<$Res> {
  __$ExpenseCategoryDtoCopyWithImpl(this._self, this._then);

  final _ExpenseCategoryDto _self;
  final $Res Function(_ExpenseCategoryDto) _then;

  /// Create a copy of ExpenseCategoryDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? translationKey = null,
  }) {
    return _then(_ExpenseCategoryDto(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      translationKey: null == translationKey
          ? _self.translationKey
          : translationKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
