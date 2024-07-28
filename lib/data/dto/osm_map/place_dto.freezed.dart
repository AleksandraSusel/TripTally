// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlaceDto _$PlaceDtoFromJson(Map<String, dynamic> json) {
  return _PlaceDto.fromJson(json);
}

/// @nodoc
mixin _$PlaceDto {
  String get name => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  PlaceAddressDto get address => throw _privateConstructorUsedError;
  GeometryDto get geometry => throw _privateConstructorUsedError;
  PlaceExtraTagsDto? get extratags => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceDtoCopyWith<PlaceDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceDtoCopyWith<$Res> {
  factory $PlaceDtoCopyWith(PlaceDto value, $Res Function(PlaceDto) then) = _$PlaceDtoCopyWithImpl<$Res, PlaceDto>;
  @useResult
  $Res call(
      {String name,
      String displayName,
      String category,
      String type,
      PlaceAddressDto address,
      GeometryDto geometry,
      PlaceExtraTagsDto? extratags});

  $PlaceAddressDtoCopyWith<$Res> get address;
  $GeometryDtoCopyWith<$Res> get geometry;
  $PlaceExtraTagsDtoCopyWith<$Res>? get extratags;
}

/// @nodoc
class _$PlaceDtoCopyWithImpl<$Res, $Val extends PlaceDto> implements $PlaceDtoCopyWith<$Res> {
  _$PlaceDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? displayName = null,
    Object? category = null,
    Object? type = null,
    Object? address = null,
    Object? geometry = null,
    Object? extratags = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as PlaceAddressDto,
      geometry: null == geometry
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as GeometryDto,
      extratags: freezed == extratags
          ? _value.extratags
          : extratags // ignore: cast_nullable_to_non_nullable
              as PlaceExtraTagsDto?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PlaceAddressDtoCopyWith<$Res> get address {
    return $PlaceAddressDtoCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GeometryDtoCopyWith<$Res> get geometry {
    return $GeometryDtoCopyWith<$Res>(_value.geometry, (value) {
      return _then(_value.copyWith(geometry: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PlaceExtraTagsDtoCopyWith<$Res>? get extratags {
    if (_value.extratags == null) {
      return null;
    }

    return $PlaceExtraTagsDtoCopyWith<$Res>(_value.extratags!, (value) {
      return _then(_value.copyWith(extratags: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlaceDtoImplCopyWith<$Res> implements $PlaceDtoCopyWith<$Res> {
  factory _$$PlaceDtoImplCopyWith(_$PlaceDtoImpl value, $Res Function(_$PlaceDtoImpl) then) =
      __$$PlaceDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String displayName,
      String category,
      String type,
      PlaceAddressDto address,
      GeometryDto geometry,
      PlaceExtraTagsDto? extratags});

  @override
  $PlaceAddressDtoCopyWith<$Res> get address;
  @override
  $GeometryDtoCopyWith<$Res> get geometry;
  @override
  $PlaceExtraTagsDtoCopyWith<$Res>? get extratags;
}

/// @nodoc
class __$$PlaceDtoImplCopyWithImpl<$Res> extends _$PlaceDtoCopyWithImpl<$Res, _$PlaceDtoImpl>
    implements _$$PlaceDtoImplCopyWith<$Res> {
  __$$PlaceDtoImplCopyWithImpl(_$PlaceDtoImpl _value, $Res Function(_$PlaceDtoImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? displayName = null,
    Object? category = null,
    Object? type = null,
    Object? address = null,
    Object? geometry = null,
    Object? extratags = freezed,
  }) {
    return _then(_$PlaceDtoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as PlaceAddressDto,
      geometry: null == geometry
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as GeometryDto,
      extratags: freezed == extratags
          ? _value.extratags
          : extratags // ignore: cast_nullable_to_non_nullable
              as PlaceExtraTagsDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaceDtoImpl implements _PlaceDto {
  const _$PlaceDtoImpl(
      {required this.name,
      required this.displayName,
      required this.category,
      required this.type,
      required this.address,
      required this.geometry,
      this.extratags});

  factory _$PlaceDtoImpl.fromJson(Map<String, dynamic> json) => _$$PlaceDtoImplFromJson(json);

  @override
  final String name;
  @override
  final String displayName;
  @override
  final String category;
  @override
  final String type;
  @override
  final PlaceAddressDto address;
  @override
  final GeometryDto geometry;
  @override
  final PlaceExtraTagsDto? extratags;

  @override
  String toString() {
    return 'PlaceDto(name: $name, displayName: $displayName, category: $category, type: $type, address: $address, geometry: $geometry, extratags: $extratags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceDtoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.displayName, displayName) || other.displayName == displayName) &&
            (identical(other.category, category) || other.category == category) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.geometry, geometry) || other.geometry == geometry) &&
            (identical(other.extratags, extratags) || other.extratags == extratags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, displayName, category, type, address, geometry, extratags);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceDtoImplCopyWith<_$PlaceDtoImpl> get copyWith =>
      __$$PlaceDtoImplCopyWithImpl<_$PlaceDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaceDtoImplToJson(
      this,
    );
  }
}

abstract class _PlaceDto implements PlaceDto {
  const factory _PlaceDto(
      {required final String name,
      required final String displayName,
      required final String category,
      required final String type,
      required final PlaceAddressDto address,
      required final GeometryDto geometry,
      final PlaceExtraTagsDto? extratags}) = _$PlaceDtoImpl;

  factory _PlaceDto.fromJson(Map<String, dynamic> json) = _$PlaceDtoImpl.fromJson;

  @override
  String get name;
  @override
  String get displayName;
  @override
  String get category;
  @override
  String get type;
  @override
  PlaceAddressDto get address;
  @override
  GeometryDto get geometry;
  @override
  PlaceExtraTagsDto? get extratags;
  @override
  @JsonKey(ignore: true)
  _$$PlaceDtoImplCopyWith<_$PlaceDtoImpl> get copyWith => throw _privateConstructorUsedError;
}
