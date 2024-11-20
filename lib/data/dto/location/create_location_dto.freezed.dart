// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_location_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateLocationDto _$CreateLocationDtoFromJson(Map<String, dynamic> json) {
  return _CreateLocationDto.fromJson(json);
}

/// @nodoc
mixin _$CreateLocationDto {
  String get countryCode => throw _privateConstructorUsedError;
  String get cityName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateLocationDtoCopyWith<CreateLocationDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateLocationDtoCopyWith<$Res> {
  factory $CreateLocationDtoCopyWith(CreateLocationDto value, $Res Function(CreateLocationDto) then) =
      _$CreateLocationDtoCopyWithImpl<$Res, CreateLocationDto>;
  @useResult
  $Res call({String countryCode, String cityName});
}

/// @nodoc
class _$CreateLocationDtoCopyWithImpl<$Res, $Val extends CreateLocationDto>
    implements $CreateLocationDtoCopyWith<$Res> {
  _$CreateLocationDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryCode = null,
    Object? cityName = null,
  }) {
    return _then(_value.copyWith(
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      cityName: null == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateLocationDtoImplCopyWith<$Res> implements $CreateLocationDtoCopyWith<$Res> {
  factory _$$CreateLocationDtoImplCopyWith(_$CreateLocationDtoImpl value, $Res Function(_$CreateLocationDtoImpl) then) =
      __$$CreateLocationDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String countryCode, String cityName});
}

/// @nodoc
class __$$CreateLocationDtoImplCopyWithImpl<$Res> extends _$CreateLocationDtoCopyWithImpl<$Res, _$CreateLocationDtoImpl>
    implements _$$CreateLocationDtoImplCopyWith<$Res> {
  __$$CreateLocationDtoImplCopyWithImpl(_$CreateLocationDtoImpl _value, $Res Function(_$CreateLocationDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryCode = null,
    Object? cityName = null,
  }) {
    return _then(_$CreateLocationDtoImpl(
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      cityName: null == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateLocationDtoImpl implements _CreateLocationDto {
  const _$CreateLocationDtoImpl({required this.countryCode, required this.cityName});

  factory _$CreateLocationDtoImpl.fromJson(Map<String, dynamic> json) => _$$CreateLocationDtoImplFromJson(json);

  @override
  final String countryCode;
  @override
  final String cityName;

  @override
  String toString() {
    return 'CreateLocationDto(countryCode: $countryCode, cityName: $cityName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateLocationDtoImpl &&
            (identical(other.countryCode, countryCode) || other.countryCode == countryCode) &&
            (identical(other.cityName, cityName) || other.cityName == cityName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, countryCode, cityName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateLocationDtoImplCopyWith<_$CreateLocationDtoImpl> get copyWith =>
      __$$CreateLocationDtoImplCopyWithImpl<_$CreateLocationDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateLocationDtoImplToJson(
      this,
    );
  }
}

abstract class _CreateLocationDto implements CreateLocationDto {
  const factory _CreateLocationDto({required final String countryCode, required final String cityName}) =
      _$CreateLocationDtoImpl;

  factory _CreateLocationDto.fromJson(Map<String, dynamic> json) = _$CreateLocationDtoImpl.fromJson;

  @override
  String get countryCode;
  @override
  String get cityName;
  @override
  @JsonKey(ignore: true)
  _$$CreateLocationDtoImplCopyWith<_$CreateLocationDtoImpl> get copyWith => throw _privateConstructorUsedError;
}
