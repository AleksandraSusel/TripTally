// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PlaceEntity {
  String get name => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  PlaceAddressEntity get address => throw _privateConstructorUsedError;
  CoordinatesEntity get coordinates => throw _privateConstructorUsedError;
  PlaceExtraTagsEntity? get extraTags => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlaceEntityCopyWith<PlaceEntity> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceEntityCopyWith<$Res> {
  factory $PlaceEntityCopyWith(PlaceEntity value, $Res Function(PlaceEntity) then) =
      _$PlaceEntityCopyWithImpl<$Res, PlaceEntity>;

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
class _$PlaceEntityCopyWithImpl<$Res, $Val extends PlaceEntity> implements $PlaceEntityCopyWith<$Res> {
  _$PlaceEntityCopyWithImpl(this._value, this._then);

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
    Object? coordinates = null,
    Object? extraTags = freezed,
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
              as PlaceAddressEntity,
      coordinates: null == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as CoordinatesEntity,
      extraTags: freezed == extraTags
          ? _value.extraTags
          : extraTags // ignore: cast_nullable_to_non_nullable
              as PlaceExtraTagsEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PlaceAddressEntityCopyWith<$Res> get address {
    return $PlaceAddressEntityCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CoordinatesEntityCopyWith<$Res> get coordinates {
    return $CoordinatesEntityCopyWith<$Res>(_value.coordinates, (value) {
      return _then(_value.copyWith(coordinates: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PlaceExtraTagsEntityCopyWith<$Res>? get extraTags {
    if (_value.extraTags == null) {
      return null;
    }

    return $PlaceExtraTagsEntityCopyWith<$Res>(_value.extraTags!, (value) {
      return _then(_value.copyWith(extraTags: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlaceEntityImplCopyWith<$Res> implements $PlaceEntityCopyWith<$Res> {
  factory _$$PlaceEntityImplCopyWith(_$PlaceEntityImpl value, $Res Function(_$PlaceEntityImpl) then) =
      __$$PlaceEntityImplCopyWithImpl<$Res>;

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
class __$$PlaceEntityImplCopyWithImpl<$Res> extends _$PlaceEntityCopyWithImpl<$Res, _$PlaceEntityImpl>
    implements _$$PlaceEntityImplCopyWith<$Res> {
  __$$PlaceEntityImplCopyWithImpl(_$PlaceEntityImpl _value, $Res Function(_$PlaceEntityImpl) _then)
      : super(_value, _then);

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
    return _then(_$PlaceEntityImpl(
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
              as PlaceAddressEntity,
      coordinates: null == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as CoordinatesEntity,
      extraTags: freezed == extraTags
          ? _value.extraTags
          : extraTags // ignore: cast_nullable_to_non_nullable
              as PlaceExtraTagsEntity?,
    ));
  }
}

/// @nodoc

class _$PlaceEntityImpl implements _PlaceEntity {
  const _$PlaceEntityImpl(
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

  @override
  String toString() {
    return 'PlaceEntity(name: $name, displayName: $displayName, category: $category, type: $type, address: $address, coordinates: $coordinates, extraTags: $extraTags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceEntityImpl &&
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceEntityImplCopyWith<_$PlaceEntityImpl> get copyWith =>
      __$$PlaceEntityImplCopyWithImpl<_$PlaceEntityImpl>(this, _$identity);
}

abstract class _PlaceEntity implements PlaceEntity {
  const factory _PlaceEntity(
      {required final String name,
      required final String displayName,
      required final String category,
      required final String type,
      required final PlaceAddressEntity address,
      required final CoordinatesEntity coordinates,
      final PlaceExtraTagsEntity? extraTags}) = _$PlaceEntityImpl;

  @override
  String get name;
  @override
  String get displayName;
  @override
  String get category;
  @override
  String get type;
  @override
  PlaceAddressEntity get address;
  @override
  CoordinatesEntity get coordinates;

  @override
  PlaceExtraTagsEntity? get extraTags;

  @override
  @JsonKey(ignore: true)
  _$$PlaceEntityImplCopyWith<_$PlaceEntityImpl> get copyWith => throw _privateConstructorUsedError;
}
