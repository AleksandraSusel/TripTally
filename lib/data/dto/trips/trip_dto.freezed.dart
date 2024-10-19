// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TripDto _$TripDtoFromJson(Map<String, dynamic> json) {
  return _TripDto.fromJson(json);
}

/// @nodoc
mixin _$TripDto {
  String get id => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  LocationDto get location => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get dateFrom => throw _privateConstructorUsedError;
  String get dateTo => throw _privateConstructorUsedError;
  List<ExpenseDto> get expenses => throw _privateConstructorUsedError;
  String get transportType => throw _privateConstructorUsedError;
  PriceDto get plannedCost => throw _privateConstructorUsedError;
  DateTime get insertedAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TripDtoCopyWith<TripDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripDtoCopyWith<$Res> {
  factory $TripDtoCopyWith(TripDto value, $Res Function(TripDto) then) = _$TripDtoCopyWithImpl<$Res, TripDto>;
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
      DateTime updatedAt});

  $LocationDtoCopyWith<$Res> get location;
  $PriceDtoCopyWith<$Res> get plannedCost;
}

/// @nodoc
class _$TripDtoCopyWithImpl<$Res, $Val extends TripDto> implements $TripDtoCopyWith<$Res> {
  _$TripDtoCopyWithImpl(this._value, this._then);

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
              as LocationDto,
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
              as List<ExpenseDto>,
      transportType: null == transportType
          ? _value.transportType
          : transportType // ignore: cast_nullable_to_non_nullable
              as String,
      plannedCost: null == plannedCost
          ? _value.plannedCost
          : plannedCost // ignore: cast_nullable_to_non_nullable
              as PriceDto,
      insertedAt: null == insertedAt
          ? _value.insertedAt
          : insertedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationDtoCopyWith<$Res> get location {
    return $LocationDtoCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PriceDtoCopyWith<$Res> get plannedCost {
    return $PriceDtoCopyWith<$Res>(_value.plannedCost, (value) {
      return _then(_value.copyWith(plannedCost: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TripDtoImplCopyWith<$Res> implements $TripDtoCopyWith<$Res> {
  factory _$$TripDtoImplCopyWith(_$TripDtoImpl value, $Res Function(_$TripDtoImpl) then) =
      __$$TripDtoImplCopyWithImpl<$Res>;
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
      DateTime updatedAt});

  @override
  $LocationDtoCopyWith<$Res> get location;
  @override
  $PriceDtoCopyWith<$Res> get plannedCost;
}

/// @nodoc
class __$$TripDtoImplCopyWithImpl<$Res> extends _$TripDtoCopyWithImpl<$Res, _$TripDtoImpl>
    implements _$$TripDtoImplCopyWith<$Res> {
  __$$TripDtoImplCopyWithImpl(_$TripDtoImpl _value, $Res Function(_$TripDtoImpl) _then) : super(_value, _then);

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
  }) {
    return _then(_$TripDtoImpl(
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
              as LocationDto,
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
              as List<ExpenseDto>,
      transportType: null == transportType
          ? _value.transportType
          : transportType // ignore: cast_nullable_to_non_nullable
              as String,
      plannedCost: null == plannedCost
          ? _value.plannedCost
          : plannedCost // ignore: cast_nullable_to_non_nullable
              as PriceDto,
      insertedAt: null == insertedAt
          ? _value.insertedAt
          : insertedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TripDtoImpl implements _TripDto {
  const _$TripDtoImpl(
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
      required this.updatedAt})
      : _expenses = expenses;

  factory _$TripDtoImpl.fromJson(Map<String, dynamic> json) => _$$TripDtoImplFromJson(json);

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
  String toString() {
    return 'TripDto(id: $id, status: $status, location: $location, userId: $userId, dateFrom: $dateFrom, dateTo: $dateTo, expenses: $expenses, transportType: $transportType, plannedCost: $plannedCost, insertedAt: $insertedAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripDtoImpl &&
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
            (identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, status, location, userId, dateFrom, dateTo,
      const DeepCollectionEquality().hash(_expenses), transportType, plannedCost, insertedAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TripDtoImplCopyWith<_$TripDtoImpl> get copyWith => __$$TripDtoImplCopyWithImpl<_$TripDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TripDtoImplToJson(
      this,
    );
  }
}

abstract class _TripDto implements TripDto {
  const factory _TripDto(
      {required final String id,
      required final String status,
      required final LocationDto location,
      required final String userId,
      required final String dateFrom,
      required final String dateTo,
      required final List<ExpenseDto> expenses,
      required final String transportType,
      required final PriceDto plannedCost,
      required final DateTime insertedAt,
      required final DateTime updatedAt}) = _$TripDtoImpl;

  factory _TripDto.fromJson(Map<String, dynamic> json) = _$TripDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get status;
  @override
  LocationDto get location;
  @override
  String get userId;
  @override
  String get dateFrom;
  @override
  String get dateTo;
  @override
  List<ExpenseDto> get expenses;
  @override
  String get transportType;
  @override
  PriceDto get plannedCost;
  @override
  DateTime get insertedAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$TripDtoImplCopyWith<_$TripDtoImpl> get copyWith => throw _privateConstructorUsedError;
}
