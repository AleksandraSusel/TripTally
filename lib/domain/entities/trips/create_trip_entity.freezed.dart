// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_trip_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateTripEntity {
  String get transportType;
  CreateLocationEntity get location;
  String get dateFrom;
  String get dateTo;
  PriceEntity get plannedCost;
  List<ExpenseEntity> get expenses;

  /// Create a copy of CreateTripEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateTripEntityCopyWith<CreateTripEntity> get copyWith =>
      _$CreateTripEntityCopyWithImpl<CreateTripEntity>(this as CreateTripEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateTripEntity &&
            (identical(other.transportType, transportType) || other.transportType == transportType) &&
            (identical(other.location, location) || other.location == location) &&
            (identical(other.dateFrom, dateFrom) || other.dateFrom == dateFrom) &&
            (identical(other.dateTo, dateTo) || other.dateTo == dateTo) &&
            (identical(other.plannedCost, plannedCost) || other.plannedCost == plannedCost) &&
            const DeepCollectionEquality().equals(other.expenses, expenses));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transportType, location, dateFrom, dateTo, plannedCost,
      const DeepCollectionEquality().hash(expenses));

  @override
  String toString() {
    return 'CreateTripEntity(transportType: $transportType, location: $location, dateFrom: $dateFrom, dateTo: $dateTo, plannedCost: $plannedCost, expenses: $expenses)';
  }
}

/// @nodoc
abstract mixin class $CreateTripEntityCopyWith<$Res> {
  factory $CreateTripEntityCopyWith(CreateTripEntity value, $Res Function(CreateTripEntity) _then) =
      _$CreateTripEntityCopyWithImpl;
  @useResult
  $Res call(
      {String transportType,
      CreateLocationEntity location,
      String dateFrom,
      String dateTo,
      PriceEntity plannedCost,
      List<ExpenseEntity> expenses});

  $CreateLocationEntityCopyWith<$Res> get location;
  $PriceEntityCopyWith<$Res> get plannedCost;
}

/// @nodoc
class _$CreateTripEntityCopyWithImpl<$Res> implements $CreateTripEntityCopyWith<$Res> {
  _$CreateTripEntityCopyWithImpl(this._self, this._then);

  final CreateTripEntity _self;
  final $Res Function(CreateTripEntity) _then;

  /// Create a copy of CreateTripEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transportType = null,
    Object? location = null,
    Object? dateFrom = null,
    Object? dateTo = null,
    Object? plannedCost = null,
    Object? expenses = null,
  }) {
    return _then(_self.copyWith(
      transportType: null == transportType
          ? _self.transportType
          : transportType // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as CreateLocationEntity,
      dateFrom: null == dateFrom
          ? _self.dateFrom
          : dateFrom // ignore: cast_nullable_to_non_nullable
              as String,
      dateTo: null == dateTo
          ? _self.dateTo
          : dateTo // ignore: cast_nullable_to_non_nullable
              as String,
      plannedCost: null == plannedCost
          ? _self.plannedCost
          : plannedCost // ignore: cast_nullable_to_non_nullable
              as PriceEntity,
      expenses: null == expenses
          ? _self.expenses
          : expenses // ignore: cast_nullable_to_non_nullable
              as List<ExpenseEntity>,
    ));
  }

  /// Create a copy of CreateTripEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CreateLocationEntityCopyWith<$Res> get location {
    return $CreateLocationEntityCopyWith<$Res>(_self.location, (value) {
      return _then(_self.copyWith(location: value));
    });
  }

  /// Create a copy of CreateTripEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PriceEntityCopyWith<$Res> get plannedCost {
    return $PriceEntityCopyWith<$Res>(_self.plannedCost, (value) {
      return _then(_self.copyWith(plannedCost: value));
    });
  }
}

/// Adds pattern-matching-related methods to [CreateTripEntity].
extension CreateTripEntityPatterns on CreateTripEntity {
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
    TResult Function(_CreateTripEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateTripEntity() when $default != null:
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
    TResult Function(_CreateTripEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateTripEntity():
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
    TResult? Function(_CreateTripEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateTripEntity() when $default != null:
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
    TResult Function(String transportType, CreateLocationEntity location, String dateFrom, String dateTo,
            PriceEntity plannedCost, List<ExpenseEntity> expenses)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateTripEntity() when $default != null:
        return $default(
            _that.transportType, _that.location, _that.dateFrom, _that.dateTo, _that.plannedCost, _that.expenses);
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
    TResult Function(String transportType, CreateLocationEntity location, String dateFrom, String dateTo,
            PriceEntity plannedCost, List<ExpenseEntity> expenses)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateTripEntity():
        return $default(
            _that.transportType, _that.location, _that.dateFrom, _that.dateTo, _that.plannedCost, _that.expenses);
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
    TResult? Function(String transportType, CreateLocationEntity location, String dateFrom, String dateTo,
            PriceEntity plannedCost, List<ExpenseEntity> expenses)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateTripEntity() when $default != null:
        return $default(
            _that.transportType, _that.location, _that.dateFrom, _that.dateTo, _that.plannedCost, _that.expenses);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _CreateTripEntity implements CreateTripEntity {
  const _CreateTripEntity(
      {required this.transportType,
      required this.location,
      required this.dateFrom,
      required this.dateTo,
      required this.plannedCost,
      required final List<ExpenseEntity> expenses})
      : _expenses = expenses;

  @override
  final String transportType;
  @override
  final CreateLocationEntity location;
  @override
  final String dateFrom;
  @override
  final String dateTo;
  @override
  final PriceEntity plannedCost;
  final List<ExpenseEntity> _expenses;
  @override
  List<ExpenseEntity> get expenses {
    if (_expenses is EqualUnmodifiableListView) return _expenses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_expenses);
  }

  /// Create a copy of CreateTripEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateTripEntityCopyWith<_CreateTripEntity> get copyWith =>
      __$CreateTripEntityCopyWithImpl<_CreateTripEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateTripEntity &&
            (identical(other.transportType, transportType) || other.transportType == transportType) &&
            (identical(other.location, location) || other.location == location) &&
            (identical(other.dateFrom, dateFrom) || other.dateFrom == dateFrom) &&
            (identical(other.dateTo, dateTo) || other.dateTo == dateTo) &&
            (identical(other.plannedCost, plannedCost) || other.plannedCost == plannedCost) &&
            const DeepCollectionEquality().equals(other._expenses, _expenses));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transportType, location, dateFrom, dateTo, plannedCost,
      const DeepCollectionEquality().hash(_expenses));

  @override
  String toString() {
    return 'CreateTripEntity(transportType: $transportType, location: $location, dateFrom: $dateFrom, dateTo: $dateTo, plannedCost: $plannedCost, expenses: $expenses)';
  }
}

/// @nodoc
abstract mixin class _$CreateTripEntityCopyWith<$Res> implements $CreateTripEntityCopyWith<$Res> {
  factory _$CreateTripEntityCopyWith(_CreateTripEntity value, $Res Function(_CreateTripEntity) _then) =
      __$CreateTripEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String transportType,
      CreateLocationEntity location,
      String dateFrom,
      String dateTo,
      PriceEntity plannedCost,
      List<ExpenseEntity> expenses});

  @override
  $CreateLocationEntityCopyWith<$Res> get location;
  @override
  $PriceEntityCopyWith<$Res> get plannedCost;
}

/// @nodoc
class __$CreateTripEntityCopyWithImpl<$Res> implements _$CreateTripEntityCopyWith<$Res> {
  __$CreateTripEntityCopyWithImpl(this._self, this._then);

  final _CreateTripEntity _self;
  final $Res Function(_CreateTripEntity) _then;

  /// Create a copy of CreateTripEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? transportType = null,
    Object? location = null,
    Object? dateFrom = null,
    Object? dateTo = null,
    Object? plannedCost = null,
    Object? expenses = null,
  }) {
    return _then(_CreateTripEntity(
      transportType: null == transportType
          ? _self.transportType
          : transportType // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as CreateLocationEntity,
      dateFrom: null == dateFrom
          ? _self.dateFrom
          : dateFrom // ignore: cast_nullable_to_non_nullable
              as String,
      dateTo: null == dateTo
          ? _self.dateTo
          : dateTo // ignore: cast_nullable_to_non_nullable
              as String,
      plannedCost: null == plannedCost
          ? _self.plannedCost
          : plannedCost // ignore: cast_nullable_to_non_nullable
              as PriceEntity,
      expenses: null == expenses
          ? _self._expenses
          : expenses // ignore: cast_nullable_to_non_nullable
              as List<ExpenseEntity>,
    ));
  }

  /// Create a copy of CreateTripEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CreateLocationEntityCopyWith<$Res> get location {
    return $CreateLocationEntityCopyWith<$Res>(_self.location, (value) {
      return _then(_self.copyWith(location: value));
    });
  }

  /// Create a copy of CreateTripEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PriceEntityCopyWith<$Res> get plannedCost {
    return $PriceEntityCopyWith<$Res>(_self.plannedCost, (value) {
      return _then(_self.copyWith(plannedCost: value));
    });
  }
}

// dart format on
