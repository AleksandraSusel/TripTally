// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_trip_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateTripDto _$CreateTripDtoFromJson(Map<String, dynamic> json) {
  return _CreateAddTripDto.fromJson(json);
}

/// @nodoc
mixin _$CreateTripDto {
  String get transportType => throw _privateConstructorUsedError;
  CreateLocationDto get location => throw _privateConstructorUsedError;
  String get dateFrom => throw _privateConstructorUsedError;
  String get dateTo => throw _privateConstructorUsedError;
  PriceDto get plannedCost => throw _privateConstructorUsedError;
  List<ExpenseDto> get expenses => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateTripDtoCopyWith<CreateTripDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTripDtoCopyWith<$Res> {
  factory $CreateTripDtoCopyWith(CreateTripDto value, $Res Function(CreateTripDto) then) =
      _$CreateTripDtoCopyWithImpl<$Res, CreateTripDto>;
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
class _$CreateTripDtoCopyWithImpl<$Res, $Val extends CreateTripDto> implements $CreateTripDtoCopyWith<$Res> {
  _$CreateTripDtoCopyWithImpl(this._value, this._then);

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
              as CreateLocationDto,
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
              as PriceDto,
      expenses: null == expenses
          ? _value.expenses
          : expenses // ignore: cast_nullable_to_non_nullable
              as List<ExpenseDto>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CreateLocationDtoCopyWith<$Res> get location {
    return $CreateLocationDtoCopyWith<$Res>(_value.location, (value) {
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
abstract class _$$CreateAddTripDtoImplCopyWith<$Res> implements $CreateTripDtoCopyWith<$Res> {
  factory _$$CreateAddTripDtoImplCopyWith(_$CreateAddTripDtoImpl value, $Res Function(_$CreateAddTripDtoImpl) then) =
      __$$CreateAddTripDtoImplCopyWithImpl<$Res>;
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
class __$$CreateAddTripDtoImplCopyWithImpl<$Res> extends _$CreateTripDtoCopyWithImpl<$Res, _$CreateAddTripDtoImpl>
    implements _$$CreateAddTripDtoImplCopyWith<$Res> {
  __$$CreateAddTripDtoImplCopyWithImpl(_$CreateAddTripDtoImpl _value, $Res Function(_$CreateAddTripDtoImpl) _then)
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
    return _then(_$CreateAddTripDtoImpl(
      transportType: null == transportType
          ? _value.transportType
          : transportType // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as CreateLocationDto,
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
              as PriceDto,
      expenses: null == expenses
          ? _value._expenses
          : expenses // ignore: cast_nullable_to_non_nullable
              as List<ExpenseDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateAddTripDtoImpl implements _CreateAddTripDto {
  const _$CreateAddTripDtoImpl(
      {required this.transportType,
      required this.location,
      required this.dateFrom,
      required this.dateTo,
      required this.plannedCost,
      required final List<ExpenseDto> expenses})
      : _expenses = expenses;

  factory _$CreateAddTripDtoImpl.fromJson(Map<String, dynamic> json) => _$$CreateAddTripDtoImplFromJson(json);

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

  @override
  String toString() {
    return 'CreateTripDto(transportType: $transportType, location: $location, dateFrom: $dateFrom, dateTo: $dateTo, plannedCost: $plannedCost, expenses: $expenses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateAddTripDtoImpl &&
            (identical(other.transportType, transportType) || other.transportType == transportType) &&
            (identical(other.location, location) || other.location == location) &&
            (identical(other.dateFrom, dateFrom) || other.dateFrom == dateFrom) &&
            (identical(other.dateTo, dateTo) || other.dateTo == dateTo) &&
            (identical(other.plannedCost, plannedCost) || other.plannedCost == plannedCost) &&
            const DeepCollectionEquality().equals(other._expenses, _expenses));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, transportType, location, dateFrom, dateTo, plannedCost,
      const DeepCollectionEquality().hash(_expenses));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateAddTripDtoImplCopyWith<_$CreateAddTripDtoImpl> get copyWith =>
      __$$CreateAddTripDtoImplCopyWithImpl<_$CreateAddTripDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateAddTripDtoImplToJson(
      this,
    );
  }
}

abstract class _CreateAddTripDto implements CreateTripDto {
  const factory _CreateAddTripDto(
      {required final String transportType,
      required final CreateLocationDto location,
      required final String dateFrom,
      required final String dateTo,
      required final PriceDto plannedCost,
      required final List<ExpenseDto> expenses}) = _$CreateAddTripDtoImpl;

  factory _CreateAddTripDto.fromJson(Map<String, dynamic> json) = _$CreateAddTripDtoImpl.fromJson;

  @override
  String get transportType;
  @override
  CreateLocationDto get location;
  @override
  String get dateFrom;
  @override
  String get dateTo;
  @override
  PriceDto get plannedCost;
  @override
  List<ExpenseDto> get expenses;
  @override
  @JsonKey(ignore: true)
  _$$CreateAddTripDtoImplCopyWith<_$CreateAddTripDtoImpl> get copyWith => throw _privateConstructorUsedError;
}
