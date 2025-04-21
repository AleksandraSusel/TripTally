// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TripEntity {
  String get id;
  String get status;
  LocationEntity get location;
  String get userId;
  String get dateFrom;
  String get dateTo;
  List<ExpenseEntity> get expenses;
  String get transportType;
  PriceEntity get plannedCost;
  DateTime get insertedAt;
  DateTime get updatedAt;
  double? get totalExpenses;

  /// Create a copy of TripEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TripEntityCopyWith<TripEntity> get copyWith => _$TripEntityCopyWithImpl<TripEntity>(this as TripEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TripEntity &&
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

  @override
  int get hashCode => Object.hash(runtimeType, id, status, location, userId, dateFrom, dateTo,
      const DeepCollectionEquality().hash(expenses), transportType, plannedCost, insertedAt, updatedAt, totalExpenses);

  @override
  String toString() {
    return 'TripEntity(id: $id, status: $status, location: $location, userId: $userId, dateFrom: $dateFrom, dateTo: $dateTo, expenses: $expenses, transportType: $transportType, plannedCost: $plannedCost, insertedAt: $insertedAt, updatedAt: $updatedAt, totalExpenses: $totalExpenses)';
  }
}

/// @nodoc
abstract mixin class $TripEntityCopyWith<$Res> {
  factory $TripEntityCopyWith(TripEntity value, $Res Function(TripEntity) _then) = _$TripEntityCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String status,
      LocationEntity location,
      String userId,
      String dateFrom,
      String dateTo,
      List<ExpenseEntity> expenses,
      String transportType,
      PriceEntity plannedCost,
      DateTime insertedAt,
      DateTime updatedAt,
      double? totalExpenses});

  $LocationEntityCopyWith<$Res> get location;
  $PriceEntityCopyWith<$Res> get plannedCost;
}

/// @nodoc
class _$TripEntityCopyWithImpl<$Res> implements $TripEntityCopyWith<$Res> {
  _$TripEntityCopyWithImpl(this._self, this._then);

  final TripEntity _self;
  final $Res Function(TripEntity) _then;

  /// Create a copy of TripEntity
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
              as LocationEntity,
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
              as List<ExpenseEntity>,
      transportType: null == transportType
          ? _self.transportType
          : transportType // ignore: cast_nullable_to_non_nullable
              as String,
      plannedCost: null == plannedCost
          ? _self.plannedCost
          : plannedCost // ignore: cast_nullable_to_non_nullable
              as PriceEntity,
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
              as double?,
    ));
  }

  /// Create a copy of TripEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationEntityCopyWith<$Res> get location {
    return $LocationEntityCopyWith<$Res>(_self.location, (value) {
      return _then(_self.copyWith(location: value));
    });
  }

  /// Create a copy of TripEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PriceEntityCopyWith<$Res> get plannedCost {
    return $PriceEntityCopyWith<$Res>(_self.plannedCost, (value) {
      return _then(_self.copyWith(plannedCost: value));
    });
  }
}

/// @nodoc

class _TripEntity implements TripEntity {
  const _TripEntity(
      {required this.id,
      required this.status,
      required this.location,
      required this.userId,
      required this.dateFrom,
      required this.dateTo,
      required final List<ExpenseEntity> expenses,
      required this.transportType,
      required this.plannedCost,
      required this.insertedAt,
      required this.updatedAt,
      this.totalExpenses})
      : _expenses = expenses;

  @override
  final String id;
  @override
  final String status;
  @override
  final LocationEntity location;
  @override
  final String userId;
  @override
  final String dateFrom;
  @override
  final String dateTo;
  final List<ExpenseEntity> _expenses;
  @override
  List<ExpenseEntity> get expenses {
    if (_expenses is EqualUnmodifiableListView) return _expenses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_expenses);
  }

  @override
  final String transportType;
  @override
  final PriceEntity plannedCost;
  @override
  final DateTime insertedAt;
  @override
  final DateTime updatedAt;
  @override
  final double? totalExpenses;

  /// Create a copy of TripEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TripEntityCopyWith<_TripEntity> get copyWith => __$TripEntityCopyWithImpl<_TripEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TripEntity &&
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

  @override
  int get hashCode => Object.hash(runtimeType, id, status, location, userId, dateFrom, dateTo,
      const DeepCollectionEquality().hash(_expenses), transportType, plannedCost, insertedAt, updatedAt, totalExpenses);

  @override
  String toString() {
    return 'TripEntity(id: $id, status: $status, location: $location, userId: $userId, dateFrom: $dateFrom, dateTo: $dateTo, expenses: $expenses, transportType: $transportType, plannedCost: $plannedCost, insertedAt: $insertedAt, updatedAt: $updatedAt, totalExpenses: $totalExpenses)';
  }
}

/// @nodoc
abstract mixin class _$TripEntityCopyWith<$Res> implements $TripEntityCopyWith<$Res> {
  factory _$TripEntityCopyWith(_TripEntity value, $Res Function(_TripEntity) _then) = __$TripEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String status,
      LocationEntity location,
      String userId,
      String dateFrom,
      String dateTo,
      List<ExpenseEntity> expenses,
      String transportType,
      PriceEntity plannedCost,
      DateTime insertedAt,
      DateTime updatedAt,
      double? totalExpenses});

  @override
  $LocationEntityCopyWith<$Res> get location;
  @override
  $PriceEntityCopyWith<$Res> get plannedCost;
}

/// @nodoc
class __$TripEntityCopyWithImpl<$Res> implements _$TripEntityCopyWith<$Res> {
  __$TripEntityCopyWithImpl(this._self, this._then);

  final _TripEntity _self;
  final $Res Function(_TripEntity) _then;

  /// Create a copy of TripEntity
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
    return _then(_TripEntity(
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
              as LocationEntity,
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
              as List<ExpenseEntity>,
      transportType: null == transportType
          ? _self.transportType
          : transportType // ignore: cast_nullable_to_non_nullable
              as String,
      plannedCost: null == plannedCost
          ? _self.plannedCost
          : plannedCost // ignore: cast_nullable_to_non_nullable
              as PriceEntity,
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
              as double?,
    ));
  }

  /// Create a copy of TripEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationEntityCopyWith<$Res> get location {
    return $LocationEntityCopyWith<$Res>(_self.location, (value) {
      return _then(_self.copyWith(location: value));
    });
  }

  /// Create a copy of TripEntity
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
