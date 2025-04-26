// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PlaceEntity {
  String get name;
  String get displayName;
  String get category;
  String get type;
  PlaceAddressEntity get address;
  CoordinatesEntity get coordinates;
  PlaceExtraTagsEntity? get extraTags;

  /// Create a copy of PlaceEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PlaceEntityCopyWith<PlaceEntity> get copyWith =>
      _$PlaceEntityCopyWithImpl<PlaceEntity>(this as PlaceEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PlaceEntity &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.displayName, displayName) || other.displayName == displayName) &&
            (identical(other.category, category) || other.category == category) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.coordinates, coordinates) || other.coordinates == coordinates) &&
            (identical(other.extraTags, extraTags) || other.extraTags == extraTags));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, displayName, category, type, address, coordinates, extraTags);

  @override
  String toString() {
    return 'PlaceEntity(name: $name, displayName: $displayName, category: $category, type: $type, address: $address, coordinates: $coordinates, extraTags: $extraTags)';
  }
}

/// @nodoc
abstract mixin class $PlaceEntityCopyWith<$Res> {
  factory $PlaceEntityCopyWith(PlaceEntity value, $Res Function(PlaceEntity) _then) = _$PlaceEntityCopyWithImpl;
  @useResult
  $Res call(
      {String name,
      String displayName,
      String category,
      String type,
      PlaceAddressEntity address,
      CoordinatesEntity coordinates,
      PlaceExtraTagsEntity? extraTags});

  $PlaceAddressEntityCopyWith<$Res> get address;
  $CoordinatesEntityCopyWith<$Res> get coordinates;
  $PlaceExtraTagsEntityCopyWith<$Res>? get extraTags;
}

/// @nodoc
class _$PlaceEntityCopyWithImpl<$Res> implements $PlaceEntityCopyWith<$Res> {
  _$PlaceEntityCopyWithImpl(this._self, this._then);

  final PlaceEntity _self;
  final $Res Function(PlaceEntity) _then;

  /// Create a copy of PlaceEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? displayName = null,
    Object? category = null,
    Object? type = null,
    Object? address = null,
    Object? coordinates = null,
    Object? extraTags = freezed,
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
              as PlaceAddressEntity,
      coordinates: null == coordinates
          ? _self.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as CoordinatesEntity,
      extraTags: freezed == extraTags
          ? _self.extraTags
          : extraTags // ignore: cast_nullable_to_non_nullable
              as PlaceExtraTagsEntity?,
    ));
  }

  /// Create a copy of PlaceEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlaceAddressEntityCopyWith<$Res> get address {
    return $PlaceAddressEntityCopyWith<$Res>(_self.address, (value) {
      return _then(_self.copyWith(address: value));
    });
  }

  /// Create a copy of PlaceEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoordinatesEntityCopyWith<$Res> get coordinates {
    return $CoordinatesEntityCopyWith<$Res>(_self.coordinates, (value) {
      return _then(_self.copyWith(coordinates: value));
    });
  }

  /// Create a copy of PlaceEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlaceExtraTagsEntityCopyWith<$Res>? get extraTags {
    if (_self.extraTags == null) {
      return null;
    }

    return $PlaceExtraTagsEntityCopyWith<$Res>(_self.extraTags!, (value) {
      return _then(_self.copyWith(extraTags: value));
    });
  }
}

/// @nodoc

class _PlaceEntity implements PlaceEntity {
  const _PlaceEntity(
      {required this.name,
      required this.displayName,
      required this.category,
      required this.type,
      required this.address,
      required this.coordinates,
      this.extraTags});

  @override
  final String name;
  @override
  final String displayName;
  @override
  final String category;
  @override
  final String type;
  @override
  final PlaceAddressEntity address;
  @override
  final CoordinatesEntity coordinates;
  @override
  final PlaceExtraTagsEntity? extraTags;

  /// Create a copy of PlaceEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PlaceEntityCopyWith<_PlaceEntity> get copyWith => __$PlaceEntityCopyWithImpl<_PlaceEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlaceEntity &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.displayName, displayName) || other.displayName == displayName) &&
            (identical(other.category, category) || other.category == category) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.coordinates, coordinates) || other.coordinates == coordinates) &&
            (identical(other.extraTags, extraTags) || other.extraTags == extraTags));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, displayName, category, type, address, coordinates, extraTags);

  @override
  String toString() {
    return 'PlaceEntity(name: $name, displayName: $displayName, category: $category, type: $type, address: $address, coordinates: $coordinates, extraTags: $extraTags)';
  }
}

/// @nodoc
abstract mixin class _$PlaceEntityCopyWith<$Res> implements $PlaceEntityCopyWith<$Res> {
  factory _$PlaceEntityCopyWith(_PlaceEntity value, $Res Function(_PlaceEntity) _then) = __$PlaceEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String name,
      String displayName,
      String category,
      String type,
      PlaceAddressEntity address,
      CoordinatesEntity coordinates,
      PlaceExtraTagsEntity? extraTags});

  @override
  $PlaceAddressEntityCopyWith<$Res> get address;
  @override
  $CoordinatesEntityCopyWith<$Res> get coordinates;
  @override
  $PlaceExtraTagsEntityCopyWith<$Res>? get extraTags;
}

/// @nodoc
class __$PlaceEntityCopyWithImpl<$Res> implements _$PlaceEntityCopyWith<$Res> {
  __$PlaceEntityCopyWithImpl(this._self, this._then);

  final _PlaceEntity _self;
  final $Res Function(_PlaceEntity) _then;

  /// Create a copy of PlaceEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? displayName = null,
    Object? category = null,
    Object? type = null,
    Object? address = null,
    Object? coordinates = null,
    Object? extraTags = freezed,
  }) {
    return _then(_PlaceEntity(
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
              as PlaceAddressEntity,
      coordinates: null == coordinates
          ? _self.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as CoordinatesEntity,
      extraTags: freezed == extraTags
          ? _self.extraTags
          : extraTags // ignore: cast_nullable_to_non_nullable
              as PlaceExtraTagsEntity?,
    ));
  }

  /// Create a copy of PlaceEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlaceAddressEntityCopyWith<$Res> get address {
    return $PlaceAddressEntityCopyWith<$Res>(_self.address, (value) {
      return _then(_self.copyWith(address: value));
    });
  }

  /// Create a copy of PlaceEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoordinatesEntityCopyWith<$Res> get coordinates {
    return $CoordinatesEntityCopyWith<$Res>(_self.coordinates, (value) {
      return _then(_self.copyWith(coordinates: value));
    });
  }

  /// Create a copy of PlaceEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlaceExtraTagsEntityCopyWith<$Res>? get extraTags {
    if (_self.extraTags == null) {
      return null;
    }

    return $PlaceExtraTagsEntityCopyWith<$Res>(_self.extraTags!, (value) {
      return _then(_self.copyWith(extraTags: value));
    });
  }
}

// dart format on
