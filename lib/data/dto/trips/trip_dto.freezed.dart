// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TripDto {
  String get id;
  String get status;
  LocationDto get location;
  String get userId;
  String get dateFrom;
  String get dateTo;
  List<ExpenseDto> get expenses;
  String get transportType;
  PriceDto get plannedCost;
  DateTime get insertedAt;
  DateTime get updatedAt;
  String? get totalExpenses;

  /// Create a copy of TripDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TripDtoCopyWith<TripDto> get copyWith => _$TripDtoCopyWithImpl<TripDto>(this as TripDto, _$identity);

  /// Serializes this TripDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TripDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.location, location) || other.location == location) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.dateFrom, dateFrom) || other.dateFrom == dateFrom) &&
            (identical(other.dateTo, dateTo) || other.dateTo == dateTo) &&
            const DeepCollectionEquality().equals(other.expenses, expenses) &&
            (identical(other.transportType, transportType) || other.transportType == transportType) &&
            (identical(other.plannedCost, plannedCost) || other.plannedCost == plannedCost) &&
            (identical(other.insertedAt, insertedAt) || other.insertedAt == insertedAt) &&
            (identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt) &&
            (identical(other.totalExpenses, totalExpenses) || other.totalExpenses == totalExpenses));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, status, location, userId, dateFrom, dateTo,
      const DeepCollectionEquality().hash(expenses), transportType, plannedCost, insertedAt, updatedAt, totalExpenses);

  @override
  String toString() {
    return 'TripDto(id: $id, status: $status, location: $location, userId: $userId, dateFrom: $dateFrom, dateTo: $dateTo, expenses: $expenses, transportType: $transportType, plannedCost: $plannedCost, insertedAt: $insertedAt, updatedAt: $updatedAt, totalExpenses: $totalExpenses)';
  }
}

/// @nodoc
abstract mixin class $TripDtoCopyWith<$Res> {
  factory $TripDtoCopyWith(TripDto value, $Res Function(TripDto) _then) = _$TripDtoCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String status,
      LocationDto location,
      String userId,
      String dateFrom,
      String dateTo,
      List<ExpenseDto> expenses,
      String transportType,
      PriceDto plannedCost,
      DateTime insertedAt,
      DateTime updatedAt,
      String? totalExpenses});

  $LocationDtoCopyWith<$Res> get location;
  $PriceDtoCopyWith<$Res> get plannedCost;
}

/// @nodoc
class _$TripDtoCopyWithImpl<$Res> implements $TripDtoCopyWith<$Res> {
  _$TripDtoCopyWithImpl(this._self, this._then);

  final TripDto _self;
  final $Res Function(TripDto) _then;

  /// Create a copy of TripDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? location = null,
    Object? userId = null,
    Object? dateFrom = null,
    Object? dateTo = null,
    Object? expenses = null,
    Object? transportType = null,
    Object? plannedCost = null,
    Object? insertedAt = null,
    Object? updatedAt = null,
    Object? totalExpenses = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationDto,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      dateFrom: null == dateFrom
          ? _self.dateFrom
          : dateFrom // ignore: cast_nullable_to_non_nullable
              as String,
      dateTo: null == dateTo
          ? _self.dateTo
          : dateTo // ignore: cast_nullable_to_non_nullable
              as String,
      expenses: null == expenses
          ? _self.expenses
          : expenses // ignore: cast_nullable_to_non_nullable
              as List<ExpenseDto>,
      transportType: null == transportType
          ? _self.transportType
          : transportType // ignore: cast_nullable_to_non_nullable
              as String,
      plannedCost: null == plannedCost
          ? _self.plannedCost
          : plannedCost // ignore: cast_nullable_to_non_nullable
              as PriceDto,
      insertedAt: null == insertedAt
          ? _self.insertedAt
          : insertedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalExpenses: freezed == totalExpenses
          ? _self.totalExpenses
          : totalExpenses // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of TripDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationDtoCopyWith<$Res> get location {
    return $LocationDtoCopyWith<$Res>(_self.location, (value) {
      return _then(_self.copyWith(location: value));
    });
  }

  /// Create a copy of TripDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PriceDtoCopyWith<$Res> get plannedCost {
    return $PriceDtoCopyWith<$Res>(_self.plannedCost, (value) {
      return _then(_self.copyWith(plannedCost: value));
    });
  }
}

/// Adds pattern-matching-related methods to [TripDto].
extension TripDtoPatterns on TripDto {
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
    TResult Function(_TripDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TripDto() when $default != null:
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
    TResult Function(_TripDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TripDto():
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
    TResult? Function(_TripDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TripDto() when $default != null:
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
            String id,
            String status,
            LocationDto location,
            String userId,
            String dateFrom,
            String dateTo,
            List<ExpenseDto> expenses,
            String transportType,
            PriceDto plannedCost,
            DateTime insertedAt,
            DateTime updatedAt,
            String? totalExpenses)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TripDto() when $default != null:
        return $default(
            _that.id,
            _that.status,
            _that.location,
            _that.userId,
            _that.dateFrom,
            _that.dateTo,
            _that.expenses,
            _that.transportType,
            _that.plannedCost,
            _that.insertedAt,
            _that.updatedAt,
            _that.totalExpenses);
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
            String id,
            String status,
            LocationDto location,
            String userId,
            String dateFrom,
            String dateTo,
            List<ExpenseDto> expenses,
            String transportType,
            PriceDto plannedCost,
            DateTime insertedAt,
            DateTime updatedAt,
            String? totalExpenses)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TripDto():
        return $default(
            _that.id,
            _that.status,
            _that.location,
            _that.userId,
            _that.dateFrom,
            _that.dateTo,
            _that.expenses,
            _that.transportType,
            _that.plannedCost,
            _that.insertedAt,
            _that.updatedAt,
            _that.totalExpenses);
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
            String id,
            String status,
            LocationDto location,
            String userId,
            String dateFrom,
            String dateTo,
            List<ExpenseDto> expenses,
            String transportType,
            PriceDto plannedCost,
            DateTime insertedAt,
            DateTime updatedAt,
            String? totalExpenses)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TripDto() when $default != null:
        return $default(
            _that.id,
            _that.status,
            _that.location,
            _that.userId,
            _that.dateFrom,
            _that.dateTo,
            _that.expenses,
            _that.transportType,
            _that.plannedCost,
            _that.insertedAt,
            _that.updatedAt,
            _that.totalExpenses);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _TripDto implements TripDto {
  const _TripDto(
      {required this.id,
      required this.status,
      required this.location,
      required this.userId,
      required this.dateFrom,
      required this.dateTo,
      required final List<ExpenseDto> expenses,
      required this.transportType,
      required this.plannedCost,
      required this.insertedAt,
      required this.updatedAt,
      this.totalExpenses})
      : _expenses = expenses;
  factory _TripDto.fromJson(Map<String, dynamic> json) => _$TripDtoFromJson(json);

  @override
  final String id;
  @override
  final String status;
  @override
  final LocationDto location;
  @override
  final String userId;
  @override
  final String dateFrom;
  @override
  final String dateTo;
  final List<ExpenseDto> _expenses;
  @override
  List<ExpenseDto> get expenses {
    if (_expenses is EqualUnmodifiableListView) return _expenses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_expenses);
  }

  @override
  final String transportType;
  @override
  final PriceDto plannedCost;
  @override
  final DateTime insertedAt;
  @override
  final DateTime updatedAt;
  @override
  final String? totalExpenses;

  /// Create a copy of TripDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TripDtoCopyWith<_TripDto> get copyWith => __$TripDtoCopyWithImpl<_TripDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TripDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TripDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.location, location) || other.location == location) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.dateFrom, dateFrom) || other.dateFrom == dateFrom) &&
            (identical(other.dateTo, dateTo) || other.dateTo == dateTo) &&
            const DeepCollectionEquality().equals(other._expenses, _expenses) &&
            (identical(other.transportType, transportType) || other.transportType == transportType) &&
            (identical(other.plannedCost, plannedCost) || other.plannedCost == plannedCost) &&
            (identical(other.insertedAt, insertedAt) || other.insertedAt == insertedAt) &&
            (identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt) &&
            (identical(other.totalExpenses, totalExpenses) || other.totalExpenses == totalExpenses));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, status, location, userId, dateFrom, dateTo,
      const DeepCollectionEquality().hash(_expenses), transportType, plannedCost, insertedAt, updatedAt, totalExpenses);

  @override
  String toString() {
    return 'TripDto(id: $id, status: $status, location: $location, userId: $userId, dateFrom: $dateFrom, dateTo: $dateTo, expenses: $expenses, transportType: $transportType, plannedCost: $plannedCost, insertedAt: $insertedAt, updatedAt: $updatedAt, totalExpenses: $totalExpenses)';
  }
}

/// @nodoc
abstract mixin class _$TripDtoCopyWith<$Res> implements $TripDtoCopyWith<$Res> {
  factory _$TripDtoCopyWith(_TripDto value, $Res Function(_TripDto) _then) = __$TripDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String status,
      LocationDto location,
      String userId,
      String dateFrom,
      String dateTo,
      List<ExpenseDto> expenses,
      String transportType,
      PriceDto plannedCost,
      DateTime insertedAt,
      DateTime updatedAt,
      String? totalExpenses});

  @override
  $LocationDtoCopyWith<$Res> get location;
  @override
  $PriceDtoCopyWith<$Res> get plannedCost;
}

/// @nodoc
class __$TripDtoCopyWithImpl<$Res> implements _$TripDtoCopyWith<$Res> {
  __$TripDtoCopyWithImpl(this._self, this._then);

  final _TripDto _self;
  final $Res Function(_TripDto) _then;

  /// Create a copy of TripDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? location = null,
    Object? userId = null,
    Object? dateFrom = null,
    Object? dateTo = null,
    Object? expenses = null,
    Object? transportType = null,
    Object? plannedCost = null,
    Object? insertedAt = null,
    Object? updatedAt = null,
    Object? totalExpenses = freezed,
  }) {
    return _then(_TripDto(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationDto,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      dateFrom: null == dateFrom
          ? _self.dateFrom
          : dateFrom // ignore: cast_nullable_to_non_nullable
              as String,
      dateTo: null == dateTo
          ? _self.dateTo
          : dateTo // ignore: cast_nullable_to_non_nullable
              as String,
      expenses: null == expenses
          ? _self._expenses
          : expenses // ignore: cast_nullable_to_non_nullable
              as List<ExpenseDto>,
      transportType: null == transportType
          ? _self.transportType
          : transportType // ignore: cast_nullable_to_non_nullable
              as String,
      plannedCost: null == plannedCost
          ? _self.plannedCost
          : plannedCost // ignore: cast_nullable_to_non_nullable
              as PriceDto,
      insertedAt: null == insertedAt
          ? _self.insertedAt
          : insertedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalExpenses: freezed == totalExpenses
          ? _self.totalExpenses
          : totalExpenses // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of TripDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationDtoCopyWith<$Res> get location {
    return $LocationDtoCopyWith<$Res>(_self.location, (value) {
      return _then(_self.copyWith(location: value));
    });
  }

  /// Create a copy of TripDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PriceDtoCopyWith<$Res> get plannedCost {
    return $PriceDtoCopyWith<$Res>(_self.plannedCost, (value) {
      return _then(_self.copyWith(plannedCost: value));
    });
  }
}

// dart format on
