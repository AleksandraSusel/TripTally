// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_trip_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddTripDto _$AddTripDtoFromJson(Map<String, dynamic> json) {
  return _AddTripDto.fromJson(json);
}

/// @nodoc
mixin _$AddTripDto {
  String get cityName => throw _privateConstructorUsedError;
  String get transportType => throw _privateConstructorUsedError;
  String get countryCode => throw _privateConstructorUsedError;
  String get dateFrom => throw _privateConstructorUsedError;
  String get dateTo => throw _privateConstructorUsedError;
  double get plannedCost => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddTripDtoCopyWith<AddTripDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddTripDtoCopyWith<$Res> {
  factory $AddTripDtoCopyWith(AddTripDto value, $Res Function(AddTripDto) then) = _$AddTripDtoCopyWithImpl<$Res, AddTripDto>;

  @useResult
  $Res call({String cityName, String transportType, String countryCode, String dateFrom, String dateTo, double plannedCost});
}

/// @nodoc
class _$AddTripDtoCopyWithImpl<$Res, $Val extends AddTripDto> implements $AddTripDtoCopyWith<$Res> {
  _$AddTripDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityName = null,
    Object? transportType = null,
    Object? countryCode = null,
    Object? dateFrom = null,
    Object? dateTo = null,
    Object? plannedCost = null,
  }) {
    return _then(_value.copyWith(
      cityName: null == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      transportType: null == transportType
          ? _value.transportType
          : transportType // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
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
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddTripDtoImplCopyWith<$Res> implements $AddTripDtoCopyWith<$Res> {
  factory _$$AddTripDtoImplCopyWith(_$AddTripDtoImpl value, $Res Function(_$AddTripDtoImpl) then) =
      __$$AddTripDtoImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call({String cityName, String transportType, String countryCode, String dateFrom, String dateTo, double plannedCost});
}

/// @nodoc
class __$$AddTripDtoImplCopyWithImpl<$Res> extends _$AddTripDtoCopyWithImpl<$Res, _$AddTripDtoImpl>
    implements _$$AddTripDtoImplCopyWith<$Res> {
  __$$AddTripDtoImplCopyWithImpl(_$AddTripDtoImpl _value, $Res Function(_$AddTripDtoImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityName = null,
    Object? transportType = null,
    Object? countryCode = null,
    Object? dateFrom = null,
    Object? dateTo = null,
    Object? plannedCost = null,
  }) {
    return _then(_$AddTripDtoImpl(
      cityName: null == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      transportType: null == transportType
          ? _value.transportType
          : transportType // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
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
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddTripDtoImpl implements _AddTripDto {
  const _$AddTripDtoImpl(
      {required this.cityName,
      required this.transportType,
      required this.countryCode,
      required this.dateFrom,
      required this.dateTo,
      required this.plannedCost});

  factory _$AddTripDtoImpl.fromJson(Map<String, dynamic> json) => _$$AddTripDtoImplFromJson(json);

  @override
  final String cityName;
  @override
  final String transportType;
  @override
  final String countryCode;
  @override
  final String dateFrom;
  @override
  final String dateTo;
  @override
  final double plannedCost;

  @override
  String toString() {
    return 'AddTripDto(cityName: $cityName, transportType: $transportType, countryCode: $countryCode, dateFrom: $dateFrom, dateTo: $dateTo, plannedCost: $plannedCost)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTripDtoImpl &&
            (identical(other.cityName, cityName) || other.cityName == cityName) &&
            (identical(other.transportType, transportType) || other.transportType == transportType) &&
            (identical(other.countryCode, countryCode) || other.countryCode == countryCode) &&
            (identical(other.dateFrom, dateFrom) || other.dateFrom == dateFrom) &&
            (identical(other.dateTo, dateTo) || other.dateTo == dateTo) &&
            (identical(other.plannedCost, plannedCost) || other.plannedCost == plannedCost));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, cityName, transportType, countryCode, dateFrom, dateTo, plannedCost);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTripDtoImplCopyWith<_$AddTripDtoImpl> get copyWith => __$$AddTripDtoImplCopyWithImpl<_$AddTripDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddTripDtoImplToJson(
      this,
    );
  }
}

abstract class _AddTripDto implements AddTripDto {
  const factory _AddTripDto(
      {required final String cityName,
      required final String transportType,
      required final String countryCode,
      required final String dateFrom,
      required final String dateTo,
      required final double plannedCost}) = _$AddTripDtoImpl;

  factory _AddTripDto.fromJson(Map<String, dynamic> json) = _$AddTripDtoImpl.fromJson;

  @override
  String get cityName;

  @override
  String get transportType;

  @override
  String get countryCode;

  @override
  String get dateFrom;

  @override
  String get dateTo;

  @override
  double get plannedCost;

  @override
  @JsonKey(ignore: true)
  _$$AddTripDtoImplCopyWith<_$AddTripDtoImpl> get copyWith => throw _privateConstructorUsedError;
}
