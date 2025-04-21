// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_location_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateLocationDto {
  String get countryCode;
  String get cityName;

  /// Create a copy of CreateLocationDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateLocationDtoCopyWith<CreateLocationDto> get copyWith =>
      _$CreateLocationDtoCopyWithImpl<CreateLocationDto>(this as CreateLocationDto, _$identity);

  /// Serializes this CreateLocationDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateLocationDto &&
            (identical(other.countryCode, countryCode) || other.countryCode == countryCode) &&
            (identical(other.cityName, cityName) || other.cityName == cityName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, countryCode, cityName);

  @override
  String toString() {
    return 'CreateLocationDto(countryCode: $countryCode, cityName: $cityName)';
  }
}

/// @nodoc
abstract mixin class $CreateLocationDtoCopyWith<$Res> {
  factory $CreateLocationDtoCopyWith(CreateLocationDto value, $Res Function(CreateLocationDto) _then) =
      _$CreateLocationDtoCopyWithImpl;
  @useResult
  $Res call({String countryCode, String cityName});
}

/// @nodoc
class _$CreateLocationDtoCopyWithImpl<$Res> implements $CreateLocationDtoCopyWith<$Res> {
  _$CreateLocationDtoCopyWithImpl(this._self, this._then);

  final CreateLocationDto _self;
  final $Res Function(CreateLocationDto) _then;

  /// Create a copy of CreateLocationDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryCode = null,
    Object? cityName = null,
  }) {
    return _then(_self.copyWith(
      countryCode: null == countryCode
          ? _self.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      cityName: null == cityName
          ? _self.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _CreateLocationDto implements CreateLocationDto {
  const _CreateLocationDto({required this.countryCode, required this.cityName});
  factory _CreateLocationDto.fromJson(Map<String, dynamic> json) => _$CreateLocationDtoFromJson(json);

  @override
  final String countryCode;
  @override
  final String cityName;

  /// Create a copy of CreateLocationDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateLocationDtoCopyWith<_CreateLocationDto> get copyWith =>
      __$CreateLocationDtoCopyWithImpl<_CreateLocationDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateLocationDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateLocationDto &&
            (identical(other.countryCode, countryCode) || other.countryCode == countryCode) &&
            (identical(other.cityName, cityName) || other.cityName == cityName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, countryCode, cityName);

  @override
  String toString() {
    return 'CreateLocationDto(countryCode: $countryCode, cityName: $cityName)';
  }
}

/// @nodoc
abstract mixin class _$CreateLocationDtoCopyWith<$Res> implements $CreateLocationDtoCopyWith<$Res> {
  factory _$CreateLocationDtoCopyWith(_CreateLocationDto value, $Res Function(_CreateLocationDto) _then) =
      __$CreateLocationDtoCopyWithImpl;
  @override
  @useResult
  $Res call({String countryCode, String cityName});
}

/// @nodoc
class __$CreateLocationDtoCopyWithImpl<$Res> implements _$CreateLocationDtoCopyWith<$Res> {
  __$CreateLocationDtoCopyWithImpl(this._self, this._then);

  final _CreateLocationDto _self;
  final $Res Function(_CreateLocationDto) _then;

  /// Create a copy of CreateLocationDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? countryCode = null,
    Object? cityName = null,
  }) {
    return _then(_CreateLocationDto(
      countryCode: null == countryCode
          ? _self.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      cityName: null == cityName
          ? _self.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
