// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip_dto_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TripDtoResponse _$TripDtoResponseFromJson(Map<String, dynamic> json) {
  return _TripDtoResponse.fromJson(json);
}

/// @nodoc
mixin _$TripDtoResponse {
  TripDto get trip => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TripDtoResponseCopyWith<TripDtoResponse> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripDtoResponseCopyWith<$Res> {
  factory $TripDtoResponseCopyWith(TripDtoResponse value, $Res Function(TripDtoResponse) then) =
      _$TripDtoResponseCopyWithImpl<$Res, TripDtoResponse>;
  @useResult
  $Res call({TripDto trip});

  $TripDtoCopyWith<$Res> get trip;
}

/// @nodoc
class _$TripDtoResponseCopyWithImpl<$Res, $Val extends TripDtoResponse> implements $TripDtoResponseCopyWith<$Res> {
  _$TripDtoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trip = null,
  }) {
    return _then(_value.copyWith(
      trip: null == trip
          ? _value.trip
          : trip // ignore: cast_nullable_to_non_nullable
              as TripDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TripDtoCopyWith<$Res> get trip {
    return $TripDtoCopyWith<$Res>(_value.trip, (value) {
      return _then(_value.copyWith(trip: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TripDtoResponseImplCopyWith<$Res> implements $TripDtoResponseCopyWith<$Res> {
  factory _$$TripDtoResponseImplCopyWith(_$TripDtoResponseImpl value, $Res Function(_$TripDtoResponseImpl) then) =
      __$$TripDtoResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TripDto trip});

  @override
  $TripDtoCopyWith<$Res> get trip;
}

/// @nodoc
class __$$TripDtoResponseImplCopyWithImpl<$Res> extends _$TripDtoResponseCopyWithImpl<$Res, _$TripDtoResponseImpl>
    implements _$$TripDtoResponseImplCopyWith<$Res> {
  __$$TripDtoResponseImplCopyWithImpl(_$TripDtoResponseImpl _value, $Res Function(_$TripDtoResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trip = null,
  }) {
    return _then(_$TripDtoResponseImpl(
      trip: null == trip
          ? _value.trip
          : trip // ignore: cast_nullable_to_non_nullable
              as TripDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TripDtoResponseImpl implements _TripDtoResponse {
  const _$TripDtoResponseImpl({required this.trip});

  factory _$TripDtoResponseImpl.fromJson(Map<String, dynamic> json) => _$$TripDtoResponseImplFromJson(json);

  @override
  final TripDto trip;

  @override
  String toString() {
    return 'TripDtoResponse(trip: $trip)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripDtoResponseImpl &&
            (identical(other.trip, trip) || other.trip == trip));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, trip);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TripDtoResponseImplCopyWith<_$TripDtoResponseImpl> get copyWith =>
      __$$TripDtoResponseImplCopyWithImpl<_$TripDtoResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TripDtoResponseImplToJson(
      this,
    );
  }
}

abstract class _TripDtoResponse implements TripDtoResponse {
  const factory _TripDtoResponse({required final TripDto trip}) = _$TripDtoResponseImpl;

  factory _TripDtoResponse.fromJson(Map<String, dynamic> json) = _$TripDtoResponseImpl.fromJson;

  @override
  TripDto get trip;
  @override
  @JsonKey(ignore: true)
  _$$TripDtoResponseImplCopyWith<_$TripDtoResponseImpl> get copyWith => throw _privateConstructorUsedError;
}
