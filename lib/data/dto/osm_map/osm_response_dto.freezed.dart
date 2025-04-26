// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'osm_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OsmResponseDto {
  List<FeatureDto> get features;

  /// Create a copy of OsmResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OsmResponseDtoCopyWith<OsmResponseDto> get copyWith =>
      _$OsmResponseDtoCopyWithImpl<OsmResponseDto>(this as OsmResponseDto, _$identity);

  /// Serializes this OsmResponseDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OsmResponseDto &&
            const DeepCollectionEquality().equals(other.features, features));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(features));

  @override
  String toString() {
    return 'OsmResponseDto(features: $features)';
  }
}

/// @nodoc
abstract mixin class $OsmResponseDtoCopyWith<$Res> {
  factory $OsmResponseDtoCopyWith(OsmResponseDto value, $Res Function(OsmResponseDto) _then) =
      _$OsmResponseDtoCopyWithImpl;
  @useResult
  $Res call({List<FeatureDto> features});
}

/// @nodoc
class _$OsmResponseDtoCopyWithImpl<$Res> implements $OsmResponseDtoCopyWith<$Res> {
  _$OsmResponseDtoCopyWithImpl(this._self, this._then);

  final OsmResponseDto _self;
  final $Res Function(OsmResponseDto) _then;

  /// Create a copy of OsmResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? features = null,
  }) {
    return _then(_self.copyWith(
      features: null == features
          ? _self.features
          : features // ignore: cast_nullable_to_non_nullable
              as List<FeatureDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _OsmResponseDto implements OsmResponseDto {
  const _OsmResponseDto({required final List<FeatureDto> features}) : _features = features;
  factory _OsmResponseDto.fromJson(Map<String, dynamic> json) => _$OsmResponseDtoFromJson(json);

  final List<FeatureDto> _features;
  @override
  List<FeatureDto> get features {
    if (_features is EqualUnmodifiableListView) return _features;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_features);
  }

  /// Create a copy of OsmResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OsmResponseDtoCopyWith<_OsmResponseDto> get copyWith =>
      __$OsmResponseDtoCopyWithImpl<_OsmResponseDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OsmResponseDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OsmResponseDto &&
            const DeepCollectionEquality().equals(other._features, _features));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_features));

  @override
  String toString() {
    return 'OsmResponseDto(features: $features)';
  }
}

/// @nodoc
abstract mixin class _$OsmResponseDtoCopyWith<$Res> implements $OsmResponseDtoCopyWith<$Res> {
  factory _$OsmResponseDtoCopyWith(_OsmResponseDto value, $Res Function(_OsmResponseDto) _then) =
      __$OsmResponseDtoCopyWithImpl;
  @override
  @useResult
  $Res call({List<FeatureDto> features});
}

/// @nodoc
class __$OsmResponseDtoCopyWithImpl<$Res> implements _$OsmResponseDtoCopyWith<$Res> {
  __$OsmResponseDtoCopyWithImpl(this._self, this._then);

  final _OsmResponseDto _self;
  final $Res Function(_OsmResponseDto) _then;

  /// Create a copy of OsmResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? features = null,
  }) {
    return _then(_OsmResponseDto(
      features: null == features
          ? _self._features
          : features // ignore: cast_nullable_to_non_nullable
              as List<FeatureDto>,
    ));
  }
}

/// @nodoc
mixin _$FeatureDto {
  PlaceDto get properties;
  GeometryDto get geometry;

  /// Create a copy of FeatureDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FeatureDtoCopyWith<FeatureDto> get copyWith => _$FeatureDtoCopyWithImpl<FeatureDto>(this as FeatureDto, _$identity);

  /// Serializes this FeatureDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FeatureDto &&
            (identical(other.properties, properties) || other.properties == properties) &&
            (identical(other.geometry, geometry) || other.geometry == geometry));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, properties, geometry);

  @override
  String toString() {
    return 'FeatureDto(properties: $properties, geometry: $geometry)';
  }
}

/// @nodoc
abstract mixin class $FeatureDtoCopyWith<$Res> {
  factory $FeatureDtoCopyWith(FeatureDto value, $Res Function(FeatureDto) _then) = _$FeatureDtoCopyWithImpl;
  @useResult
  $Res call({PlaceDto properties, GeometryDto geometry});

  $PlaceDtoCopyWith<$Res> get properties;
  $GeometryDtoCopyWith<$Res> get geometry;
}

/// @nodoc
class _$FeatureDtoCopyWithImpl<$Res> implements $FeatureDtoCopyWith<$Res> {
  _$FeatureDtoCopyWithImpl(this._self, this._then);

  final FeatureDto _self;
  final $Res Function(FeatureDto) _then;

  /// Create a copy of FeatureDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? properties = null,
    Object? geometry = null,
  }) {
    return _then(_self.copyWith(
      properties: null == properties
          ? _self.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as PlaceDto,
      geometry: null == geometry
          ? _self.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as GeometryDto,
    ));
  }

  /// Create a copy of FeatureDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlaceDtoCopyWith<$Res> get properties {
    return $PlaceDtoCopyWith<$Res>(_self.properties, (value) {
      return _then(_self.copyWith(properties: value));
    });
  }

  /// Create a copy of FeatureDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GeometryDtoCopyWith<$Res> get geometry {
    return $GeometryDtoCopyWith<$Res>(_self.geometry, (value) {
      return _then(_self.copyWith(geometry: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _FeatureDto implements FeatureDto {
  const _FeatureDto({required this.properties, required this.geometry});
  factory _FeatureDto.fromJson(Map<String, dynamic> json) => _$FeatureDtoFromJson(json);

  @override
  final PlaceDto properties;
  @override
  final GeometryDto geometry;

  /// Create a copy of FeatureDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FeatureDtoCopyWith<_FeatureDto> get copyWith => __$FeatureDtoCopyWithImpl<_FeatureDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FeatureDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FeatureDto &&
            (identical(other.properties, properties) || other.properties == properties) &&
            (identical(other.geometry, geometry) || other.geometry == geometry));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, properties, geometry);

  @override
  String toString() {
    return 'FeatureDto(properties: $properties, geometry: $geometry)';
  }
}

/// @nodoc
abstract mixin class _$FeatureDtoCopyWith<$Res> implements $FeatureDtoCopyWith<$Res> {
  factory _$FeatureDtoCopyWith(_FeatureDto value, $Res Function(_FeatureDto) _then) = __$FeatureDtoCopyWithImpl;
  @override
  @useResult
  $Res call({PlaceDto properties, GeometryDto geometry});

  @override
  $PlaceDtoCopyWith<$Res> get properties;
  @override
  $GeometryDtoCopyWith<$Res> get geometry;
}

/// @nodoc
class __$FeatureDtoCopyWithImpl<$Res> implements _$FeatureDtoCopyWith<$Res> {
  __$FeatureDtoCopyWithImpl(this._self, this._then);

  final _FeatureDto _self;
  final $Res Function(_FeatureDto) _then;

  /// Create a copy of FeatureDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? properties = null,
    Object? geometry = null,
  }) {
    return _then(_FeatureDto(
      properties: null == properties
          ? _self.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as PlaceDto,
      geometry: null == geometry
          ? _self.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as GeometryDto,
    ));
  }

  /// Create a copy of FeatureDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlaceDtoCopyWith<$Res> get properties {
    return $PlaceDtoCopyWith<$Res>(_self.properties, (value) {
      return _then(_self.copyWith(properties: value));
    });
  }

  /// Create a copy of FeatureDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GeometryDtoCopyWith<$Res> get geometry {
    return $GeometryDtoCopyWith<$Res>(_self.geometry, (value) {
      return _then(_self.copyWith(geometry: value));
    });
  }
}

// dart format on
