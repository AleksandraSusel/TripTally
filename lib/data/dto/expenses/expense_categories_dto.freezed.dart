// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expense_categories_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ExpenseCategoriesDto {
  List<ExpenseCategoryDto> get categories;

  /// Create a copy of ExpenseCategoriesDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ExpenseCategoriesDtoCopyWith<ExpenseCategoriesDto> get copyWith =>
      _$ExpenseCategoriesDtoCopyWithImpl<ExpenseCategoriesDto>(this as ExpenseCategoriesDto, _$identity);

  /// Serializes this ExpenseCategoriesDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ExpenseCategoriesDto &&
            const DeepCollectionEquality().equals(other.categories, categories));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(categories));

  @override
  String toString() {
    return 'ExpenseCategoriesDto(categories: $categories)';
  }
}

/// @nodoc
abstract mixin class $ExpenseCategoriesDtoCopyWith<$Res> {
  factory $ExpenseCategoriesDtoCopyWith(ExpenseCategoriesDto value, $Res Function(ExpenseCategoriesDto) _then) =
      _$ExpenseCategoriesDtoCopyWithImpl;
  @useResult
  $Res call({List<ExpenseCategoryDto> categories});
}

/// @nodoc
class _$ExpenseCategoriesDtoCopyWithImpl<$Res> implements $ExpenseCategoriesDtoCopyWith<$Res> {
  _$ExpenseCategoriesDtoCopyWithImpl(this._self, this._then);

  final ExpenseCategoriesDto _self;
  final $Res Function(ExpenseCategoriesDto) _then;

  /// Create a copy of ExpenseCategoriesDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
  }) {
    return _then(_self.copyWith(
      categories: null == categories
          ? _self.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<ExpenseCategoryDto>,
    ));
  }
}

/// Adds pattern-matching-related methods to [ExpenseCategoriesDto].
extension ExpenseCategoriesDtoPatterns on ExpenseCategoriesDto {
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
    TResult Function(_ExpenseCategoriesDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ExpenseCategoriesDto() when $default != null:
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
    TResult Function(_ExpenseCategoriesDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ExpenseCategoriesDto():
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
    TResult? Function(_ExpenseCategoriesDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ExpenseCategoriesDto() when $default != null:
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
    TResult Function(List<ExpenseCategoryDto> categories)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ExpenseCategoriesDto() when $default != null:
        return $default(_that.categories);
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
    TResult Function(List<ExpenseCategoryDto> categories) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ExpenseCategoriesDto():
        return $default(_that.categories);
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
    TResult? Function(List<ExpenseCategoryDto> categories)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ExpenseCategoriesDto() when $default != null:
        return $default(_that.categories);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ExpenseCategoriesDto implements ExpenseCategoriesDto {
  const _ExpenseCategoriesDto({required final List<ExpenseCategoryDto> categories}) : _categories = categories;
  factory _ExpenseCategoriesDto.fromJson(Map<String, dynamic> json) => _$ExpenseCategoriesDtoFromJson(json);

  final List<ExpenseCategoryDto> _categories;
  @override
  List<ExpenseCategoryDto> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  /// Create a copy of ExpenseCategoriesDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ExpenseCategoriesDtoCopyWith<_ExpenseCategoriesDto> get copyWith =>
      __$ExpenseCategoriesDtoCopyWithImpl<_ExpenseCategoriesDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ExpenseCategoriesDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ExpenseCategoriesDto &&
            const DeepCollectionEquality().equals(other._categories, _categories));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_categories));

  @override
  String toString() {
    return 'ExpenseCategoriesDto(categories: $categories)';
  }
}

/// @nodoc
abstract mixin class _$ExpenseCategoriesDtoCopyWith<$Res> implements $ExpenseCategoriesDtoCopyWith<$Res> {
  factory _$ExpenseCategoriesDtoCopyWith(_ExpenseCategoriesDto value, $Res Function(_ExpenseCategoriesDto) _then) =
      __$ExpenseCategoriesDtoCopyWithImpl;
  @override
  @useResult
  $Res call({List<ExpenseCategoryDto> categories});
}

/// @nodoc
class __$ExpenseCategoriesDtoCopyWithImpl<$Res> implements _$ExpenseCategoriesDtoCopyWith<$Res> {
  __$ExpenseCategoriesDtoCopyWithImpl(this._self, this._then);

  final _ExpenseCategoriesDto _self;
  final $Res Function(_ExpenseCategoriesDto) _then;

  /// Create a copy of ExpenseCategoriesDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? categories = null,
  }) {
    return _then(_ExpenseCategoriesDto(
      categories: null == categories
          ? _self._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<ExpenseCategoryDto>,
    ));
  }
}

// dart format on
