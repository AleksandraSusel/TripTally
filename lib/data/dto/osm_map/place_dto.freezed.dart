// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PlaceDto {
  String get name;
  String get displayName;
  String get category;
  String get type;
  PlaceAddressDto get address;
  PlaceExtraTagsDto? get extratags;

  /// Create a copy of PlaceDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PlaceDtoCopyWith<PlaceDto> get copyWith => _$PlaceDtoCopyWithImpl<PlaceDto>(this as PlaceDto, _$identity);

  /// Serializes this PlaceDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PlaceDto &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.displayName, displayName) || other.displayName == displayName) &&
            (identical(other.category, category) || other.category == category) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.extratags, extratags) || other.extratags == extratags));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, displayName, category, type, address, extratags);

  @override
  String toString() {
    return 'PlaceDto(name: $name, displayName: $displayName, category: $category, type: $type, address: $address, extratags: $extratags)';
  }
}

/// @nodoc
abstract mixin class $PlaceDtoCopyWith<$Res> {
  factory $PlaceDtoCopyWith(PlaceDto value, $Res Function(PlaceDto) _then) = _$PlaceDtoCopyWithImpl;
  @useResult
  $Res call(
      {String name,
      String displayName,
      String category,
      String type,
      PlaceAddressDto address,
      PlaceExtraTagsDto? extratags});

  $PlaceAddressDtoCopyWith<$Res> get address;
  $PlaceExtraTagsDtoCopyWith<$Res>? get extratags;
}

/// @nodoc
class _$PlaceDtoCopyWithImpl<$Res> implements $PlaceDtoCopyWith<$Res> {
  _$PlaceDtoCopyWithImpl(this._self, this._then);

  final PlaceDto _self;
  final $Res Function(PlaceDto) _then;

  /// Create a copy of PlaceDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? displayName = null,
    Object? category = null,
    Object? type = null,
    Object? address = null,
    Object? extratags = freezed,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _self.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as PlaceAddressDto,
      extratags: freezed == extratags
          ? _self.extratags
          : extratags // ignore: cast_nullable_to_non_nullable
              as PlaceExtraTagsDto?,
    ));
  }

  /// Create a copy of PlaceDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlaceAddressDtoCopyWith<$Res> get address {
    return $PlaceAddressDtoCopyWith<$Res>(_self.address, (value) {
      return _then(_self.copyWith(address: value));
    });
  }

  /// Create a copy of PlaceDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlaceExtraTagsDtoCopyWith<$Res>? get extratags {
    if (_self.extratags == null) {
      return null;
    }

    return $PlaceExtraTagsDtoCopyWith<$Res>(_self.extratags!, (value) {
      return _then(_self.copyWith(extratags: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _PlaceDto implements PlaceDto {
  const _PlaceDto(
      {required this.name,
      required this.displayName,
      required this.category,
      required this.type,
      required this.address,
      this.extratags});
  factory _PlaceDto.fromJson(Map<String, dynamic> json) => _$PlaceDtoFromJson(json);

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
  final PlaceExtraTagsDto? extratags;

  /// Create a copy of PlaceDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PlaceDtoCopyWith<_PlaceDto> get copyWith => __$PlaceDtoCopyWithImpl<_PlaceDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PlaceDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlaceDto &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.displayName, displayName) || other.displayName == displayName) &&
            (identical(other.category, category) || other.category == category) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.extratags, extratags) || other.extratags == extratags));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, displayName, category, type, address, extratags);

  @override
  String toString() {
    return 'PlaceDto(name: $name, displayName: $displayName, category: $category, type: $type, address: $address, extratags: $extratags)';
  }
}

/// @nodoc
abstract mixin class _$PlaceDtoCopyWith<$Res> implements $PlaceDtoCopyWith<$Res> {
  factory _$PlaceDtoCopyWith(_PlaceDto value, $Res Function(_PlaceDto) _then) = __$PlaceDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String name,
      String displayName,
      String category,
      String type,
      PlaceAddressDto address,
      PlaceExtraTagsDto? extratags});

  @override
  $PlaceAddressDtoCopyWith<$Res> get address;
  @override
  $PlaceExtraTagsDtoCopyWith<$Res>? get extratags;
}

/// @nodoc
class __$PlaceDtoCopyWithImpl<$Res> implements _$PlaceDtoCopyWith<$Res> {
  __$PlaceDtoCopyWithImpl(this._self, this._then);

  final _PlaceDto _self;
  final $Res Function(_PlaceDto) _then;

  /// Create a copy of PlaceDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? displayName = null,
    Object? category = null,
    Object? type = null,
    Object? address = null,
    Object? extratags = freezed,
  }) {
    return _then(_PlaceDto(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _self.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as PlaceAddressDto,
      extratags: freezed == extratags
          ? _self.extratags
          : extratags // ignore: cast_nullable_to_non_nullable
              as PlaceExtraTagsDto?,
    ));
  }

  /// Create a copy of PlaceDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlaceAddressDtoCopyWith<$Res> get address {
    return $PlaceAddressDtoCopyWith<$Res>(_self.address, (value) {
      return _then(_self.copyWith(address: value));
    });
  }

  /// Create a copy of PlaceDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlaceExtraTagsDtoCopyWith<$Res>? get extratags {
    if (_self.extratags == null) {
      return null;
    }

    return $PlaceExtraTagsDtoCopyWith<$Res>(_self.extratags!, (value) {
      return _then(_self.copyWith(extratags: value));
    });
  }
}

// dart format on
