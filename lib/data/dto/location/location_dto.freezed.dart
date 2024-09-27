// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LocationDto _$LocationDtoFromJson(Map<String, dynamic> json) {
  return _LocationDto.fromJson(json);
}

/// @nodoc
mixin _$LocationDto {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get countryCode => throw _privateConstructorUsedError;
  String get cityName => throw _privateConstructorUsedError;
  DateTime get insertedAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationDtoCopyWith<LocationDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationDtoCopyWith<$Res> {
  factory $LocationDtoCopyWith(LocationDto value, $Res Function(LocationDto) then) =
      _$LocationDtoCopyWithImpl<$Res, LocationDto>;
  @useResult
  $Res call({String id, String userId, String countryCode, String cityName, DateTime insertedAt, DateTime updatedAt});
}

/// @nodoc
class _$LocationDtoCopyWithImpl<$Res, $Val extends LocationDto> implements $LocationDtoCopyWith<$Res> {
  _$LocationDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? countryCode = null,
    Object? cityName = null,
    Object? insertedAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      cityName: null == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      insertedAt: null == insertedAt
          ? _value.insertedAt
          : insertedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationDtoImplCopyWith<$Res> implements $LocationDtoCopyWith<$Res> {
  factory _$$LocationDtoImplCopyWith(_$LocationDtoImpl value, $Res Function(_$LocationDtoImpl) then) =
      __$$LocationDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String userId, String countryCode, String cityName, DateTime insertedAt, DateTime updatedAt});
}

/// @nodoc
class __$$LocationDtoImplCopyWithImpl<$Res> extends _$LocationDtoCopyWithImpl<$Res, _$LocationDtoImpl>
    implements _$$LocationDtoImplCopyWith<$Res> {
  __$$LocationDtoImplCopyWithImpl(_$LocationDtoImpl _value, $Res Function(_$LocationDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? countryCode = null,
    Object? cityName = null,
    Object? insertedAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$LocationDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      cityName: null == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      insertedAt: null == insertedAt
          ? _value.insertedAt
          : insertedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationDtoImpl implements _LocationDto {
  const _$LocationDtoImpl(
      {required this.id,
      required this.userId,
      required this.countryCode,
      required this.cityName,
      required this.insertedAt,
      required this.updatedAt});

  factory _$LocationDtoImpl.fromJson(Map<String, dynamic> json) => _$$LocationDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String countryCode;
  @override
  final String cityName;
  @override
  final DateTime insertedAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'LocationDto(id: $id, userId: $userId, countryCode: $countryCode, cityName: $cityName, insertedAt: $insertedAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.countryCode, countryCode) || other.countryCode == countryCode) &&
            (identical(other.cityName, cityName) || other.cityName == cityName) &&
            (identical(other.insertedAt, insertedAt) || other.insertedAt == insertedAt) &&
            (identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, countryCode, cityName, insertedAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationDtoImplCopyWith<_$LocationDtoImpl> get copyWith =>
      __$$LocationDtoImplCopyWithImpl<_$LocationDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationDtoImplToJson(
      this,
    );
  }
}

abstract class _LocationDto implements LocationDto {
  const factory _LocationDto(
      {required final String id,
      required final String userId,
      required final String countryCode,
      required final String cityName,
      required final DateTime insertedAt,
      required final DateTime updatedAt}) = _$LocationDtoImpl;

  factory _LocationDto.fromJson(Map<String, dynamic> json) = _$LocationDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get countryCode;
  @override
  String get cityName;
  @override
  DateTime get insertedAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$LocationDtoImplCopyWith<_$LocationDtoImpl> get copyWith => throw _privateConstructorUsedError;
}
