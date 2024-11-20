// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_trip_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateTripEntity {
  String get transportType => throw _privateConstructorUsedError;
  CreateLocationEntity get location => throw _privateConstructorUsedError;
  String get dateFrom => throw _privateConstructorUsedError;
  String get dateTo => throw _privateConstructorUsedError;
  PriceEntity get plannedCost => throw _privateConstructorUsedError;
  List<ExpenseEntity> get expenses => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateTripEntityCopyWith<CreateTripEntity> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTripEntityCopyWith<$Res> {
  factory $CreateTripEntityCopyWith(CreateTripEntity value, $Res Function(CreateTripEntity) then) =
      _$CreateTripEntityCopyWithImpl<$Res, CreateTripEntity>;
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
class _$CreateTripEntityCopyWithImpl<$Res, $Val extends CreateTripEntity> implements $CreateTripEntityCopyWith<$Res> {
  _$CreateTripEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      transportType: null == transportType
          ? _value.transportType
          : transportType // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as CreateLocationEntity,
      dateFrom: null == dateFrom
          ? _value.dateFrom
          : dateFrom // ignore: cast_nullable_to_non_nullable
              as String,
      dateTo: null == dateTo
          ? _value.dateTo
          : dateTo // ignore: cast_nullable_to_non_nullable
              as String,
      plannedCost: null == plannedCost
          ? _value.plannedCost
          : plannedCost // ignore: cast_nullable_to_non_nullable
              as PriceEntity,
      expenses: null == expenses
          ? _value.expenses
          : expenses // ignore: cast_nullable_to_non_nullable
              as List<ExpenseEntity>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CreateLocationEntityCopyWith<$Res> get location {
    return $CreateLocationEntityCopyWith<$Res>(_value.location, (value) {
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
abstract class _$$CreateTripEntityImplCopyWith<$Res> implements $CreateTripEntityCopyWith<$Res> {
  factory _$$CreateTripEntityImplCopyWith(_$CreateTripEntityImpl value, $Res Function(_$CreateTripEntityImpl) then) =
      __$$CreateTripEntityImplCopyWithImpl<$Res>;
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
class __$$CreateTripEntityImplCopyWithImpl<$Res> extends _$CreateTripEntityCopyWithImpl<$Res, _$CreateTripEntityImpl>
    implements _$$CreateTripEntityImplCopyWith<$Res> {
  __$$CreateTripEntityImplCopyWithImpl(_$CreateTripEntityImpl _value, $Res Function(_$CreateTripEntityImpl) _then)
      : super(_value, _then);

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
    return _then(_$CreateTripEntityImpl(
      transportType: null == transportType
          ? _value.transportType
          : transportType // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as CreateLocationEntity,
      dateFrom: null == dateFrom
          ? _value.dateFrom
          : dateFrom // ignore: cast_nullable_to_non_nullable
              as String,
      dateTo: null == dateTo
          ? _value.dateTo
          : dateTo // ignore: cast_nullable_to_non_nullable
              as String,
      plannedCost: null == plannedCost
          ? _value.plannedCost
          : plannedCost // ignore: cast_nullable_to_non_nullable
              as PriceEntity,
      expenses: null == expenses
          ? _value._expenses
          : expenses // ignore: cast_nullable_to_non_nullable
              as List<ExpenseEntity>,
    ));
  }
}

/// @nodoc

class _$CreateTripEntityImpl implements _CreateTripEntity {
  const _$CreateTripEntityImpl(
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

  @override
  String toString() {
    return 'CreateTripEntity(transportType: $transportType, location: $location, dateFrom: $dateFrom, dateTo: $dateTo, plannedCost: $plannedCost, expenses: $expenses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTripEntityImpl &&
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTripEntityImplCopyWith<_$CreateTripEntityImpl> get copyWith =>
      __$$CreateTripEntityImplCopyWithImpl<_$CreateTripEntityImpl>(this, _$identity);
}

abstract class _CreateTripEntity implements CreateTripEntity {
  const factory _CreateTripEntity(
      {required final String transportType,
      required final CreateLocationEntity location,
      required final String dateFrom,
      required final String dateTo,
      required final PriceEntity plannedCost,
      required final List<ExpenseEntity> expenses}) = _$CreateTripEntityImpl;

  @override
  String get transportType;
  @override
  CreateLocationEntity get location;
  @override
  String get dateFrom;
  @override
  String get dateTo;
  @override
  PriceEntity get plannedCost;
  @override
  List<ExpenseEntity> get expenses;
  @override
  @JsonKey(ignore: true)
  _$$CreateTripEntityImplCopyWith<_$CreateTripEntityImpl> get copyWith => throw _privateConstructorUsedError;
}
