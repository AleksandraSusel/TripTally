// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_trips_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetTripsDto {
  List<TripDto> get trips;

  /// Create a copy of GetTripsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetTripsDtoCopyWith<GetTripsDto> get copyWith =>
      _$GetTripsDtoCopyWithImpl<GetTripsDto>(this as GetTripsDto, _$identity);

  /// Serializes this GetTripsDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetTripsDto &&
            const DeepCollectionEquality().equals(other.trips, trips));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(trips));

  @override
  String toString() {
    return 'GetTripsDto(trips: $trips)';
  }
}

/// @nodoc
abstract mixin class $GetTripsDtoCopyWith<$Res> {
  factory $GetTripsDtoCopyWith(GetTripsDto value, $Res Function(GetTripsDto) _then) = _$GetTripsDtoCopyWithImpl;
  @useResult
  $Res call({List<TripDto> trips});
}

/// @nodoc
class _$GetTripsDtoCopyWithImpl<$Res> implements $GetTripsDtoCopyWith<$Res> {
  _$GetTripsDtoCopyWithImpl(this._self, this._then);

  final GetTripsDto _self;
  final $Res Function(GetTripsDto) _then;

  /// Create a copy of GetTripsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trips = null,
  }) {
    return _then(_self.copyWith(
      trips: null == trips
          ? _self.trips
          : trips // ignore: cast_nullable_to_non_nullable
              as List<TripDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _GetTripsDto implements GetTripsDto {
  const _GetTripsDto({required final List<TripDto> trips}) : _trips = trips;
  factory _GetTripsDto.fromJson(Map<String, dynamic> json) => _$GetTripsDtoFromJson(json);

  final List<TripDto> _trips;
  @override
  List<TripDto> get trips {
    if (_trips is EqualUnmodifiableListView) return _trips;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trips);
  }

  /// Create a copy of GetTripsDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GetTripsDtoCopyWith<_GetTripsDto> get copyWith => __$GetTripsDtoCopyWithImpl<_GetTripsDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GetTripsDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetTripsDto &&
            const DeepCollectionEquality().equals(other._trips, _trips));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_trips));

  @override
  String toString() {
    return 'GetTripsDto(trips: $trips)';
  }
}

/// @nodoc
abstract mixin class _$GetTripsDtoCopyWith<$Res> implements $GetTripsDtoCopyWith<$Res> {
  factory _$GetTripsDtoCopyWith(_GetTripsDto value, $Res Function(_GetTripsDto) _then) = __$GetTripsDtoCopyWithImpl;
  @override
  @useResult
  $Res call({List<TripDto> trips});
}

/// @nodoc
class __$GetTripsDtoCopyWithImpl<$Res> implements _$GetTripsDtoCopyWith<$Res> {
  __$GetTripsDtoCopyWithImpl(this._self, this._then);

  final _GetTripsDto _self;
  final $Res Function(_GetTripsDto) _then;

  /// Create a copy of GetTripsDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? trips = null,
  }) {
    return _then(_GetTripsDto(
      trips: null == trips
          ? _self._trips
          : trips // ignore: cast_nullable_to_non_nullable
              as List<TripDto>,
    ));
  }
}

// dart format on
