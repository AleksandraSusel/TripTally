// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'geometry_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GeometryDto _$GeometryDtoFromJson(Map<String, dynamic> json) {
  return _GeometryDto.fromJson(json);
}

/// @nodoc
mixin _$GeometryDto {
  List<double> get coordinates => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeometryDtoCopyWith<GeometryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeometryDtoCopyWith<$Res> {
  factory $GeometryDtoCopyWith(
          GeometryDto value, $Res Function(GeometryDto) then) =
      _$GeometryDtoCopyWithImpl<$Res, GeometryDto>;
  @useResult
  $Res call({List<double> coordinates});
}

/// @nodoc
class _$GeometryDtoCopyWithImpl<$Res, $Val extends GeometryDto>
    implements $GeometryDtoCopyWith<$Res> {
  _$GeometryDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coordinates = null,
  }) {
    return _then(_value.copyWith(
      coordinates: null == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GeometryDtoImplCopyWith<$Res>
    implements $GeometryDtoCopyWith<$Res> {
  factory _$$GeometryDtoImplCopyWith(
          _$GeometryDtoImpl value, $Res Function(_$GeometryDtoImpl) then) =
      __$$GeometryDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<double> coordinates});
}

/// @nodoc
class __$$GeometryDtoImplCopyWithImpl<$Res>
    extends _$GeometryDtoCopyWithImpl<$Res, _$GeometryDtoImpl>
    implements _$$GeometryDtoImplCopyWith<$Res> {
  __$$GeometryDtoImplCopyWithImpl(
      _$GeometryDtoImpl _value, $Res Function(_$GeometryDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coordinates = null,
  }) {
    return _then(_$GeometryDtoImpl(
      coordinates: null == coordinates
          ? _value._coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GeometryDtoImpl implements _GeometryDto {
  const _$GeometryDtoImpl({required final List<double> coordinates})
      : _coordinates = coordinates;

  factory _$GeometryDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$GeometryDtoImplFromJson(json);

  final List<double> _coordinates;
  @override
  List<double> get coordinates {
    if (_coordinates is EqualUnmodifiableListView) return _coordinates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coordinates);
  }

  @override
  String toString() {
    return 'GeometryDto(coordinates: $coordinates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeometryDtoImpl &&
            const DeepCollectionEquality()
                .equals(other._coordinates, _coordinates));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_coordinates));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GeometryDtoImplCopyWith<_$GeometryDtoImpl> get copyWith =>
      __$$GeometryDtoImplCopyWithImpl<_$GeometryDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeometryDtoImplToJson(
      this,
    );
  }
}

abstract class _GeometryDto implements GeometryDto {
  const factory _GeometryDto({required final List<double> coordinates}) =
      _$GeometryDtoImpl;

  factory _GeometryDto.fromJson(Map<String, dynamic> json) =
      _$GeometryDtoImpl.fromJson;

  @override
  List<double> get coordinates;
  @override
  @JsonKey(ignore: true)
  _$$GeometryDtoImplCopyWith<_$GeometryDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
