// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_trip_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
CreateTripDto _$CreateTripDtoFromJson(Map<String, dynamic> json) {
  return _CreateAddTripDto.fromJson(json);
}

/// @nodoc
mixin _$CreateTripDto {
  String get transportType;
  CreateLocationDto get location;
  String get dateFrom;
  String get dateTo;
  PriceDto get plannedCost;
  List<ExpenseDto> get expenses;

  /// Create a copy of CreateTripDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateTripDtoCopyWith<CreateTripDto> get copyWith =>
      _$CreateTripDtoCopyWithImpl<CreateTripDto>(this as CreateTripDto, _$identity);

  /// Serializes this CreateTripDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateTripDto &&
            (identical(other.transportType, transportType) || other.transportType == transportType) &&
            (identical(other.location, location) || other.location == location) &&
            (identical(other.dateFrom, dateFrom) || other.dateFrom == dateFrom) &&
            (identical(other.dateTo, dateTo) || other.dateTo == dateTo) &&
            (identical(other.plannedCost, plannedCost) || other.plannedCost == plannedCost) &&
            const DeepCollectionEquality().equals(other.expenses, expenses));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, transportType, location, dateFrom, dateTo, plannedCost,
      const DeepCollectionEquality().hash(expenses));

  @override
  String toString() {
    return 'CreateTripDto(transportType: $transportType, location: $location, dateFrom: $dateFrom, dateTo: $dateTo, plannedCost: $plannedCost, expenses: $expenses)';
  }
}

/// @nodoc
abstract mixin class $CreateTripDtoCopyWith<$Res> {
  factory $CreateTripDtoCopyWith(CreateTripDto value, $Res Function(CreateTripDto) _then) = _$CreateTripDtoCopyWithImpl;
  @useResult
  $Res call(
      {String transportType,
      CreateLocationDto location,
      String dateFrom,
      String dateTo,
      PriceDto plannedCost,
      List<ExpenseDto> expenses});

  $CreateLocationDtoCopyWith<$Res> get location;
  $PriceDtoCopyWith<$Res> get plannedCost;
}

/// @nodoc
class _$CreateTripDtoCopyWithImpl<$Res> implements $CreateTripDtoCopyWith<$Res> {
  _$CreateTripDtoCopyWithImpl(this._self, this._then);

  final CreateTripDto _self;
  final $Res Function(CreateTripDto) _then;

  /// Create a copy of CreateTripDto
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
              as CreateLocationDto,
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
              as PriceDto,
      expenses: null == expenses
          ? _self.expenses
          : expenses // ignore: cast_nullable_to_non_nullable
              as List<ExpenseDto>,
    ));
  }

  /// Create a copy of CreateTripDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CreateLocationDtoCopyWith<$Res> get location {
    return $CreateLocationDtoCopyWith<$Res>(_self.location, (value) {
      return _then(_self.copyWith(location: value));
    });
  }

  /// Create a copy of CreateTripDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PriceDtoCopyWith<$Res> get plannedCost {
    return $PriceDtoCopyWith<$Res>(_self.plannedCost, (value) {
      return _then(_self.copyWith(plannedCost: value));
    });
  }
}

/// Adds pattern-matching-related methods to [CreateTripDto].
extension CreateTripDtoPatterns on CreateTripDto {
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
    TResult Function(_CreateAddTripDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateAddTripDto() when $default != null:
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
    TResult Function(_CreateAddTripDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateAddTripDto():
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
    TResult? Function(_CreateAddTripDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateAddTripDto() when $default != null:
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
    TResult Function(String transportType, CreateLocationDto location, String dateFrom, String dateTo,
            PriceDto plannedCost, List<ExpenseDto> expenses)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateAddTripDto() when $default != null:
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
    TResult Function(String transportType, CreateLocationDto location, String dateFrom, String dateTo,
            PriceDto plannedCost, List<ExpenseDto> expenses)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateAddTripDto():
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
    TResult? Function(String transportType, CreateLocationDto location, String dateFrom, String dateTo,
            PriceDto plannedCost, List<ExpenseDto> expenses)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateAddTripDto() when $default != null:
        return $default(
            _that.transportType, _that.location, _that.dateFrom, _that.dateTo, _that.plannedCost, _that.expenses);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CreateAddTripDto implements CreateTripDto {
  const _CreateAddTripDto(
      {required this.transportType,
      required this.location,
      required this.dateFrom,
      required this.dateTo,
      required this.plannedCost,
      required final List<ExpenseDto> expenses})
      : _expenses = expenses;
  factory _CreateAddTripDto.fromJson(Map<String, dynamic> json) => _$CreateAddTripDtoFromJson(json);

  @override
  final String transportType;
  @override
  final CreateLocationDto location;
  @override
  final String dateFrom;
  @override
  final String dateTo;
  @override
  final PriceDto plannedCost;
  final List<ExpenseDto> _expenses;
  @override
  List<ExpenseDto> get expenses {
    if (_expenses is EqualUnmodifiableListView) return _expenses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_expenses);
  }

  /// Create a copy of CreateTripDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateAddTripDtoCopyWith<_CreateAddTripDto> get copyWith =>
      __$CreateAddTripDtoCopyWithImpl<_CreateAddTripDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateAddTripDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateAddTripDto &&
            (identical(other.transportType, transportType) || other.transportType == transportType) &&
            (identical(other.location, location) || other.location == location) &&
            (identical(other.dateFrom, dateFrom) || other.dateFrom == dateFrom) &&
            (identical(other.dateTo, dateTo) || other.dateTo == dateTo) &&
            (identical(other.plannedCost, plannedCost) || other.plannedCost == plannedCost) &&
            const DeepCollectionEquality().equals(other._expenses, _expenses));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, transportType, location, dateFrom, dateTo, plannedCost,
      const DeepCollectionEquality().hash(_expenses));

  @override
  String toString() {
    return 'CreateTripDto(transportType: $transportType, location: $location, dateFrom: $dateFrom, dateTo: $dateTo, plannedCost: $plannedCost, expenses: $expenses)';
  }
}

/// @nodoc
abstract mixin class _$CreateAddTripDtoCopyWith<$Res> implements $CreateTripDtoCopyWith<$Res> {
  factory _$CreateAddTripDtoCopyWith(_CreateAddTripDto value, $Res Function(_CreateAddTripDto) _then) =
      __$CreateAddTripDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String transportType,
      CreateLocationDto location,
      String dateFrom,
      String dateTo,
      PriceDto plannedCost,
      List<ExpenseDto> expenses});

  @override
  $CreateLocationDtoCopyWith<$Res> get location;
  @override
  $PriceDtoCopyWith<$Res> get plannedCost;
}

/// @nodoc
class __$CreateAddTripDtoCopyWithImpl<$Res> implements _$CreateAddTripDtoCopyWith<$Res> {
  __$CreateAddTripDtoCopyWithImpl(this._self, this._then);

  final _CreateAddTripDto _self;
  final $Res Function(_CreateAddTripDto) _then;

  /// Create a copy of CreateTripDto
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
    return _then(_CreateAddTripDto(
      transportType: null == transportType
          ? _self.transportType
          : transportType // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as CreateLocationDto,
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
              as PriceDto,
      expenses: null == expenses
          ? _self._expenses
          : expenses // ignore: cast_nullable_to_non_nullable
              as List<ExpenseDto>,
    ));
  }

  /// Create a copy of CreateTripDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CreateLocationDtoCopyWith<$Res> get location {
    return $CreateLocationDtoCopyWith<$Res>(_self.location, (value) {
      return _then(_self.copyWith(location: value));
    });
  }

  /// Create a copy of CreateTripDto
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
