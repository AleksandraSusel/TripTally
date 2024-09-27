// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_trips_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetTripsDto _$GetTripsDtoFromJson(Map<String, dynamic> json) {
  return _GetTripsDto.fromJson(json);
}

/// @nodoc
mixin _$GetTripsDto {
  List<TripDto> get trips => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetTripsDtoCopyWith<GetTripsDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetTripsDtoCopyWith<$Res> {
  factory $GetTripsDtoCopyWith(GetTripsDto value, $Res Function(GetTripsDto) then) =
      _$GetTripsDtoCopyWithImpl<$Res, GetTripsDto>;
  @useResult
  $Res call({List<TripDto> trips});
}

/// @nodoc
class _$GetTripsDtoCopyWithImpl<$Res, $Val extends GetTripsDto> implements $GetTripsDtoCopyWith<$Res> {
  _$GetTripsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trips = null,
  }) {
    return _then(_value.copyWith(
      trips: null == trips
          ? _value.trips
          : trips // ignore: cast_nullable_to_non_nullable
              as List<TripDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetTripsDtoImplCopyWith<$Res> implements $GetTripsDtoCopyWith<$Res> {
  factory _$$GetTripsDtoImplCopyWith(_$GetTripsDtoImpl value, $Res Function(_$GetTripsDtoImpl) then) =
      __$$GetTripsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TripDto> trips});
}

/// @nodoc
class __$$GetTripsDtoImplCopyWithImpl<$Res> extends _$GetTripsDtoCopyWithImpl<$Res, _$GetTripsDtoImpl>
    implements _$$GetTripsDtoImplCopyWith<$Res> {
  __$$GetTripsDtoImplCopyWithImpl(_$GetTripsDtoImpl _value, $Res Function(_$GetTripsDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trips = null,
  }) {
    return _then(_$GetTripsDtoImpl(
      trips: null == trips
          ? _value._trips
          : trips // ignore: cast_nullable_to_non_nullable
              as List<TripDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetTripsDtoImpl implements _GetTripsDto {
  const _$GetTripsDtoImpl({required final List<TripDto> trips}) : _trips = trips;

  factory _$GetTripsDtoImpl.fromJson(Map<String, dynamic> json) => _$$GetTripsDtoImplFromJson(json);

  final List<TripDto> _trips;
  @override
  List<TripDto> get trips {
    if (_trips is EqualUnmodifiableListView) return _trips;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trips);
  }

  @override
  String toString() {
    return 'GetTripsDto(trips: $trips)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTripsDtoImpl &&
            const DeepCollectionEquality().equals(other._trips, _trips));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_trips));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTripsDtoImplCopyWith<_$GetTripsDtoImpl> get copyWith =>
      __$$GetTripsDtoImplCopyWithImpl<_$GetTripsDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetTripsDtoImplToJson(
      this,
    );
  }
}

abstract class _GetTripsDto implements GetTripsDto {
  const factory _GetTripsDto({required final List<TripDto> trips}) = _$GetTripsDtoImpl;

  factory _GetTripsDto.fromJson(Map<String, dynamic> json) = _$GetTripsDtoImpl.fromJson;

  @override
  List<TripDto> get trips;
  @override
  @JsonKey(ignore: true)
  _$$GetTripsDtoImplCopyWith<_$GetTripsDtoImpl> get copyWith => throw _privateConstructorUsedError;
}
