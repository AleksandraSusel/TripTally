// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coordinates_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CoordinatesEntity {
  double get lat => throw _privateConstructorUsedError;
  double get lon => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CoordinatesEntityCopyWith<CoordinatesEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoordinatesEntityCopyWith<$Res> {
  factory $CoordinatesEntityCopyWith(
          CoordinatesEntity value, $Res Function(CoordinatesEntity) then) =
      _$CoordinatesEntityCopyWithImpl<$Res, CoordinatesEntity>;
  @useResult
  $Res call({double lat, double lon});
}

/// @nodoc
class _$CoordinatesEntityCopyWithImpl<$Res, $Val extends CoordinatesEntity>
    implements $CoordinatesEntityCopyWith<$Res> {
  _$CoordinatesEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lon = null,
  }) {
    return _then(_value.copyWith(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoordinatesEntityImplCopyWith<$Res>
    implements $CoordinatesEntityCopyWith<$Res> {
  factory _$$CoordinatesEntityImplCopyWith(_$CoordinatesEntityImpl value,
          $Res Function(_$CoordinatesEntityImpl) then) =
      __$$CoordinatesEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double lat, double lon});
}

/// @nodoc
class __$$CoordinatesEntityImplCopyWithImpl<$Res>
    extends _$CoordinatesEntityCopyWithImpl<$Res, _$CoordinatesEntityImpl>
    implements _$$CoordinatesEntityImplCopyWith<$Res> {
  __$$CoordinatesEntityImplCopyWithImpl(_$CoordinatesEntityImpl _value,
      $Res Function(_$CoordinatesEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lon = null,
  }) {
    return _then(_$CoordinatesEntityImpl(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$CoordinatesEntityImpl implements _CoordinatesEntity {
  const _$CoordinatesEntityImpl({required this.lat, required this.lon});

  @override
  final double lat;
  @override
  final double lon;

  @override
  String toString() {
    return 'CoordinatesEntity(lat: $lat, lon: $lon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoordinatesEntityImpl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lat, lon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoordinatesEntityImplCopyWith<_$CoordinatesEntityImpl> get copyWith =>
      __$$CoordinatesEntityImplCopyWithImpl<_$CoordinatesEntityImpl>(
          this, _$identity);
}

abstract class _CoordinatesEntity implements CoordinatesEntity {
  const factory _CoordinatesEntity(
      {required final double lat,
      required final double lon}) = _$CoordinatesEntityImpl;

  @override
  double get lat;
  @override
  double get lon;
  @override
  @JsonKey(ignore: true)
  _$$CoordinatesEntityImplCopyWith<_$CoordinatesEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
