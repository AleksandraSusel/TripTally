// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_expenses_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateExpensesDto {
  List<ExpenseDto> get expenses;

  /// Create a copy of CreateExpensesDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateExpensesDtoCopyWith<CreateExpensesDto> get copyWith =>
      _$CreateExpensesDtoCopyWithImpl<CreateExpensesDto>(this as CreateExpensesDto, _$identity);

  /// Serializes this CreateExpensesDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateExpensesDto &&
            const DeepCollectionEquality().equals(other.expenses, expenses));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(expenses));

  @override
  String toString() {
    return 'CreateExpensesDto(expenses: $expenses)';
  }
}

/// @nodoc
abstract mixin class $CreateExpensesDtoCopyWith<$Res> {
  factory $CreateExpensesDtoCopyWith(CreateExpensesDto value, $Res Function(CreateExpensesDto) _then) =
      _$CreateExpensesDtoCopyWithImpl;
  @useResult
  $Res call({List<ExpenseDto> expenses});
}

/// @nodoc
class _$CreateExpensesDtoCopyWithImpl<$Res> implements $CreateExpensesDtoCopyWith<$Res> {
  _$CreateExpensesDtoCopyWithImpl(this._self, this._then);

  final CreateExpensesDto _self;
  final $Res Function(CreateExpensesDto) _then;

  /// Create a copy of CreateExpensesDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expenses = null,
  }) {
    return _then(_self.copyWith(
      expenses: null == expenses
          ? _self.expenses
          : expenses // ignore: cast_nullable_to_non_nullable
              as List<ExpenseDto>,
    ));
  }
}

/// Adds pattern-matching-related methods to [CreateExpensesDto].
extension CreateExpensesDtoPatterns on CreateExpensesDto {
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
    TResult Function(_CreateExpensesDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateExpensesDto() when $default != null:
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
    TResult Function(_CreateExpensesDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateExpensesDto():
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
    TResult? Function(_CreateExpensesDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateExpensesDto() when $default != null:
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
    TResult Function(List<ExpenseDto> expenses)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateExpensesDto() when $default != null:
        return $default(_that.expenses);
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
    TResult Function(List<ExpenseDto> expenses) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateExpensesDto():
        return $default(_that.expenses);
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
    TResult? Function(List<ExpenseDto> expenses)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateExpensesDto() when $default != null:
        return $default(_that.expenses);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CreateExpensesDto implements CreateExpensesDto {
  const _CreateExpensesDto({required final List<ExpenseDto> expenses}) : _expenses = expenses;
  factory _CreateExpensesDto.fromJson(Map<String, dynamic> json) => _$CreateExpensesDtoFromJson(json);

  final List<ExpenseDto> _expenses;
  @override
  List<ExpenseDto> get expenses {
    if (_expenses is EqualUnmodifiableListView) return _expenses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_expenses);
  }

  /// Create a copy of CreateExpensesDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateExpensesDtoCopyWith<_CreateExpensesDto> get copyWith =>
      __$CreateExpensesDtoCopyWithImpl<_CreateExpensesDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateExpensesDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateExpensesDto &&
            const DeepCollectionEquality().equals(other._expenses, _expenses));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_expenses));

  @override
  String toString() {
    return 'CreateExpensesDto(expenses: $expenses)';
  }
}

/// @nodoc
abstract mixin class _$CreateExpensesDtoCopyWith<$Res> implements $CreateExpensesDtoCopyWith<$Res> {
  factory _$CreateExpensesDtoCopyWith(_CreateExpensesDto value, $Res Function(_CreateExpensesDto) _then) =
      __$CreateExpensesDtoCopyWithImpl;
  @override
  @useResult
  $Res call({List<ExpenseDto> expenses});
}

/// @nodoc
class __$CreateExpensesDtoCopyWithImpl<$Res> implements _$CreateExpensesDtoCopyWith<$Res> {
  __$CreateExpensesDtoCopyWithImpl(this._self, this._then);

  final _CreateExpensesDto _self;
  final $Res Function(_CreateExpensesDto) _then;

  /// Create a copy of CreateExpensesDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? expenses = null,
  }) {
    return _then(_CreateExpensesDto(
      expenses: null == expenses
          ? _self._expenses
          : expenses // ignore: cast_nullable_to_non_nullable
              as List<ExpenseDto>,
    ));
  }
}

// dart format on
