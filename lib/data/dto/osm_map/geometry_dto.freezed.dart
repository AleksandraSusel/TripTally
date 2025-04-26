// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'geometry_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GeometryDto {
  List<double> get coordinates;

  /// Create a copy of GeometryDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GeometryDtoCopyWith<GeometryDto> get copyWith =>
      _$GeometryDtoCopyWithImpl<GeometryDto>(this as GeometryDto, _$identity);

  /// Serializes this GeometryDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GeometryDto &&
            const DeepCollectionEquality().equals(other.coordinates, coordinates));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(coordinates));

  @override
  String toString() {
    return 'GeometryDto(coordinates: $coordinates)';
  }
}

/// @nodoc
abstract mixin class $GeometryDtoCopyWith<$Res> {
  factory $GeometryDtoCopyWith(GeometryDto value, $Res Function(GeometryDto) _then) = _$GeometryDtoCopyWithImpl;
  @useResult
  $Res call({List<double> coordinates});
}

/// @nodoc
class _$GeometryDtoCopyWithImpl<$Res> implements $GeometryDtoCopyWith<$Res> {
  _$GeometryDtoCopyWithImpl(this._self, this._then);

  final GeometryDto _self;
  final $Res Function(GeometryDto) _then;

  /// Create a copy of GeometryDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coordinates = null,
  }) {
    return _then(_self.copyWith(
      coordinates: null == coordinates
          ? _self.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _GeometryDto implements GeometryDto {
  const _GeometryDto({required final List<double> coordinates}) : _coordinates = coordinates;
  factory _GeometryDto.fromJson(Map<String, dynamic> json) => _$GeometryDtoFromJson(json);

  final List<double> _coordinates;
  @override
  List<double> get coordinates {
    if (_coordinates is EqualUnmodifiableListView) return _coordinates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coordinates);
  }

  /// Create a copy of GeometryDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GeometryDtoCopyWith<_GeometryDto> get copyWith => __$GeometryDtoCopyWithImpl<_GeometryDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GeometryDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GeometryDto &&
            const DeepCollectionEquality().equals(other._coordinates, _coordinates));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_coordinates));

  @override
  String toString() {
    return 'GeometryDto(coordinates: $coordinates)';
  }
}

/// @nodoc
abstract mixin class _$GeometryDtoCopyWith<$Res> implements $GeometryDtoCopyWith<$Res> {
  factory _$GeometryDtoCopyWith(_GeometryDto value, $Res Function(_GeometryDto) _then) = __$GeometryDtoCopyWithImpl;
  @override
  @useResult
  $Res call({List<double> coordinates});
}

/// @nodoc
class __$GeometryDtoCopyWithImpl<$Res> implements _$GeometryDtoCopyWith<$Res> {
  __$GeometryDtoCopyWithImpl(this._self, this._then);

  final _GeometryDto _self;
  final $Res Function(_GeometryDto) _then;

  /// Create a copy of GeometryDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? coordinates = null,
  }) {
    return _then(_GeometryDto(
      coordinates: null == coordinates
          ? _self._coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

// dart format on
