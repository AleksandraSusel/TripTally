// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'osm_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OsmResponseDto _$OsmResponseDtoFromJson(Map<String, dynamic> json) {
  return _OsmResponseDto.fromJson(json);
}

/// @nodoc
mixin _$OsmResponseDto {
  List<FeatureDto> get features => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OsmResponseDtoCopyWith<OsmResponseDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OsmResponseDtoCopyWith<$Res> {
  factory $OsmResponseDtoCopyWith(OsmResponseDto value, $Res Function(OsmResponseDto) then) =
      _$OsmResponseDtoCopyWithImpl<$Res, OsmResponseDto>;
  @useResult
  $Res call({List<FeatureDto> features});
}

/// @nodoc
class _$OsmResponseDtoCopyWithImpl<$Res, $Val extends OsmResponseDto> implements $OsmResponseDtoCopyWith<$Res> {
  _$OsmResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? features = null,
  }) {
    return _then(_value.copyWith(
      features: null == features
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as List<FeatureDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OsmResponseDtoImplCopyWith<$Res> implements $OsmResponseDtoCopyWith<$Res> {
  factory _$$OsmResponseDtoImplCopyWith(_$OsmResponseDtoImpl value, $Res Function(_$OsmResponseDtoImpl) then) =
      __$$OsmResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<FeatureDto> features});
}

/// @nodoc
class __$$OsmResponseDtoImplCopyWithImpl<$Res> extends _$OsmResponseDtoCopyWithImpl<$Res, _$OsmResponseDtoImpl>
    implements _$$OsmResponseDtoImplCopyWith<$Res> {
  __$$OsmResponseDtoImplCopyWithImpl(_$OsmResponseDtoImpl _value, $Res Function(_$OsmResponseDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? features = null,
  }) {
    return _then(_$OsmResponseDtoImpl(
      features: null == features
          ? _value._features
          : features // ignore: cast_nullable_to_non_nullable
              as List<FeatureDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OsmResponseDtoImpl implements _OsmResponseDto {
  const _$OsmResponseDtoImpl({required final List<FeatureDto> features}) : _features = features;

  factory _$OsmResponseDtoImpl.fromJson(Map<String, dynamic> json) => _$$OsmResponseDtoImplFromJson(json);

  final List<FeatureDto> _features;
  @override
  List<FeatureDto> get features {
    if (_features is EqualUnmodifiableListView) return _features;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_features);
  }

  @override
  String toString() {
    return 'OsmResponseDto(features: $features)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OsmResponseDtoImpl &&
            const DeepCollectionEquality().equals(other._features, _features));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_features));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OsmResponseDtoImplCopyWith<_$OsmResponseDtoImpl> get copyWith =>
      __$$OsmResponseDtoImplCopyWithImpl<_$OsmResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OsmResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _OsmResponseDto implements OsmResponseDto {
  const factory _OsmResponseDto({required final List<FeatureDto> features}) = _$OsmResponseDtoImpl;

  factory _OsmResponseDto.fromJson(Map<String, dynamic> json) = _$OsmResponseDtoImpl.fromJson;

  @override
  List<FeatureDto> get features;
  @override
  @JsonKey(ignore: true)
  _$$OsmResponseDtoImplCopyWith<_$OsmResponseDtoImpl> get copyWith => throw _privateConstructorUsedError;
}

FeatureDto _$FeatureDtoFromJson(Map<String, dynamic> json) {
  return _FeatureDto.fromJson(json);
}

/// @nodoc
mixin _$FeatureDto {
  PlaceDto get properties => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeatureDtoCopyWith<FeatureDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeatureDtoCopyWith<$Res> {
  factory $FeatureDtoCopyWith(FeatureDto value, $Res Function(FeatureDto) then) =
      _$FeatureDtoCopyWithImpl<$Res, FeatureDto>;
  @useResult
  $Res call({PlaceDto properties});

  $PlaceDtoCopyWith<$Res> get properties;
}

/// @nodoc
class _$FeatureDtoCopyWithImpl<$Res, $Val extends FeatureDto> implements $FeatureDtoCopyWith<$Res> {
  _$FeatureDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? properties = null,
  }) {
    return _then(_value.copyWith(
      properties: null == properties
          ? _value.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as PlaceDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PlaceDtoCopyWith<$Res> get properties {
    return $PlaceDtoCopyWith<$Res>(_value.properties, (value) {
      return _then(_value.copyWith(properties: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FeatureDtoImplCopyWith<$Res> implements $FeatureDtoCopyWith<$Res> {
  factory _$$FeatureDtoImplCopyWith(_$FeatureDtoImpl value, $Res Function(_$FeatureDtoImpl) then) =
      __$$FeatureDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PlaceDto properties});

  @override
  $PlaceDtoCopyWith<$Res> get properties;
}

/// @nodoc
class __$$FeatureDtoImplCopyWithImpl<$Res> extends _$FeatureDtoCopyWithImpl<$Res, _$FeatureDtoImpl>
    implements _$$FeatureDtoImplCopyWith<$Res> {
  __$$FeatureDtoImplCopyWithImpl(_$FeatureDtoImpl _value, $Res Function(_$FeatureDtoImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? properties = null,
  }) {
    return _then(_$FeatureDtoImpl(
      properties: null == properties
          ? _value.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as PlaceDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeatureDtoImpl implements _FeatureDto {
  const _$FeatureDtoImpl({required this.properties});

  factory _$FeatureDtoImpl.fromJson(Map<String, dynamic> json) => _$$FeatureDtoImplFromJson(json);

  @override
  final PlaceDto properties;

  @override
  String toString() {
    return 'FeatureDto(properties: $properties)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeatureDtoImpl &&
            (identical(other.properties, properties) || other.properties == properties));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, properties);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeatureDtoImplCopyWith<_$FeatureDtoImpl> get copyWith =>
      __$$FeatureDtoImplCopyWithImpl<_$FeatureDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeatureDtoImplToJson(
      this,
    );
  }
}

abstract class _FeatureDto implements FeatureDto {
  const factory _FeatureDto({required final PlaceDto properties}) = _$FeatureDtoImpl;

  factory _FeatureDto.fromJson(Map<String, dynamic> json) = _$FeatureDtoImpl.fromJson;

  @override
  PlaceDto get properties;
  @override
  @JsonKey(ignore: true)
  _$$FeatureDtoImplCopyWith<_$FeatureDtoImpl> get copyWith => throw _privateConstructorUsedError;
}
