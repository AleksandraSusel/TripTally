// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TripEntity {
  String get id => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  LocationEntity get location => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get dateFrom => throw _privateConstructorUsedError;
  String get dateTo => throw _privateConstructorUsedError;
  List<ExpenseEntity> get expenses => throw _privateConstructorUsedError;
  String get transportType => throw _privateConstructorUsedError;
  PriceEntity get plannedCost => throw _privateConstructorUsedError;
  DateTime get insertedAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  double? get totalExpenses => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TripEntityCopyWith<TripEntity> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripEntityCopyWith<$Res> {
  factory $TripEntityCopyWith(TripEntity value, $Res Function(TripEntity) then) =
      _$TripEntityCopyWithImpl<$Res, TripEntity>;
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
class _$TripEntityCopyWithImpl<$Res, $Val extends TripEntity> implements $TripEntityCopyWith<$Res> {
  _$TripEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationEntity,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      dateFrom: null == dateFrom
          ? _value.dateFrom
          : dateFrom // ignore: cast_nullable_to_non_nullable
              as String,
      dateTo: null == dateTo
          ? _value.dateTo
          : dateTo // ignore: cast_nullable_to_non_nullable
              as String,
      expenses: null == expenses
          ? _value.expenses
          : expenses // ignore: cast_nullable_to_non_nullable
              as List<ExpenseEntity>,
      transportType: null == transportType
          ? _value.transportType
          : transportType // ignore: cast_nullable_to_non_nullable
              as String,
      plannedCost: null == plannedCost
          ? _value.plannedCost
          : plannedCost // ignore: cast_nullable_to_non_nullable
              as PriceEntity,
      insertedAt: null == insertedAt
          ? _value.insertedAt
          : insertedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalExpenses: freezed == totalExpenses
          ? _value.totalExpenses
          : totalExpenses // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationEntityCopyWith<$Res> get location {
    return $LocationEntityCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PriceEntityCopyWith<$Res> get plannedCost {
    return $PriceEntityCopyWith<$Res>(_value.plannedCost, (value) {
      return _then(_value.copyWith(plannedCost: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TripEntityImplCopyWith<$Res> implements $TripEntityCopyWith<$Res> {
  factory _$$TripEntityImplCopyWith(_$TripEntityImpl value, $Res Function(_$TripEntityImpl) then) =
      __$$TripEntityImplCopyWithImpl<$Res>;
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
class __$$TripEntityImplCopyWithImpl<$Res> extends _$TripEntityCopyWithImpl<$Res, _$TripEntityImpl>
    implements _$$TripEntityImplCopyWith<$Res> {
  __$$TripEntityImplCopyWithImpl(_$TripEntityImpl _value, $Res Function(_$TripEntityImpl) _then) : super(_value, _then);

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
    return _then(_$TripEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationEntity,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      dateFrom: null == dateFrom
          ? _value.dateFrom
          : dateFrom // ignore: cast_nullable_to_non_nullable
              as String,
      dateTo: null == dateTo
          ? _value.dateTo
          : dateTo // ignore: cast_nullable_to_non_nullable
              as String,
      expenses: null == expenses
          ? _value._expenses
          : expenses // ignore: cast_nullable_to_non_nullable
              as List<ExpenseEntity>,
      transportType: null == transportType
          ? _value.transportType
          : transportType // ignore: cast_nullable_to_non_nullable
              as String,
      plannedCost: null == plannedCost
          ? _value.plannedCost
          : plannedCost // ignore: cast_nullable_to_non_nullable
              as PriceEntity,
      insertedAt: null == insertedAt
          ? _value.insertedAt
          : insertedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalExpenses: freezed == totalExpenses
          ? _value.totalExpenses
          : totalExpenses // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$TripEntityImpl implements _TripEntity {
  const _$TripEntityImpl(
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

  @override
  String toString() {
    return 'TripEntity(id: $id, status: $status, location: $location, userId: $userId, dateFrom: $dateFrom, dateTo: $dateTo, expenses: $expenses, transportType: $transportType, plannedCost: $plannedCost, insertedAt: $insertedAt, updatedAt: $updatedAt, totalExpenses: $totalExpenses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripEntityImpl &&
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TripEntityImplCopyWith<_$TripEntityImpl> get copyWith =>
      __$$TripEntityImplCopyWithImpl<_$TripEntityImpl>(this, _$identity);
}

abstract class _TripEntity implements TripEntity {
  const factory _TripEntity(
      {required final String id,
      required final String status,
      required final LocationEntity location,
      required final String userId,
      required final String dateFrom,
      required final String dateTo,
      required final List<ExpenseEntity> expenses,
      required final String transportType,
      required final PriceEntity plannedCost,
      required final DateTime insertedAt,
      required final DateTime updatedAt,
      final double? totalExpenses}) = _$TripEntityImpl;

  @override
  String get id;
  @override
  String get status;
  @override
  LocationEntity get location;
  @override
  String get userId;
  @override
  String get dateFrom;
  @override
  String get dateTo;
  @override
  List<ExpenseEntity> get expenses;
  @override
  String get transportType;
  @override
  PriceEntity get plannedCost;
  @override
  DateTime get insertedAt;
  @override
  DateTime get updatedAt;
  @override
  double? get totalExpenses;
  @override
  @JsonKey(ignore: true)
  _$$TripEntityImplCopyWith<_$TripEntityImpl> get copyWith => throw _privateConstructorUsedError;
}
