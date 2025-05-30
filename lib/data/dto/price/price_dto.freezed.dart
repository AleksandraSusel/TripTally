// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'price_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PriceDto {
  String get currency;
  String get amount;

  /// Create a copy of PriceDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PriceDtoCopyWith<PriceDto> get copyWith => _$PriceDtoCopyWithImpl<PriceDto>(this as PriceDto, _$identity);

  /// Serializes this PriceDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PriceDto &&
            (identical(other.currency, currency) || other.currency == currency) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, currency, amount);

  @override
  String toString() {
    return 'PriceDto(currency: $currency, amount: $amount)';
  }
}

/// @nodoc
abstract mixin class $PriceDtoCopyWith<$Res> {
  factory $PriceDtoCopyWith(PriceDto value, $Res Function(PriceDto) _then) = _$PriceDtoCopyWithImpl;
  @useResult
  $Res call({String currency, String amount});
}

/// @nodoc
class _$PriceDtoCopyWithImpl<$Res> implements $PriceDtoCopyWith<$Res> {
  _$PriceDtoCopyWithImpl(this._self, this._then);

  final PriceDto _self;
  final $Res Function(PriceDto) _then;

  /// Create a copy of PriceDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currency = null,
    Object? amount = null,
  }) {
    return _then(_self.copyWith(
      currency: null == currency
          ? _self.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _PriceDto implements PriceDto {
  const _PriceDto({required this.currency, required this.amount});
  factory _PriceDto.fromJson(Map<String, dynamic> json) => _$PriceDtoFromJson(json);

  @override
  final String currency;
  @override
  final String amount;

  /// Create a copy of PriceDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PriceDtoCopyWith<_PriceDto> get copyWith => __$PriceDtoCopyWithImpl<_PriceDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PriceDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PriceDto &&
            (identical(other.currency, currency) || other.currency == currency) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, currency, amount);

  @override
  String toString() {
    return 'PriceDto(currency: $currency, amount: $amount)';
  }
}

/// @nodoc
abstract mixin class _$PriceDtoCopyWith<$Res> implements $PriceDtoCopyWith<$Res> {
  factory _$PriceDtoCopyWith(_PriceDto value, $Res Function(_PriceDto) _then) = __$PriceDtoCopyWithImpl;
  @override
  @useResult
  $Res call({String currency, String amount});
}

/// @nodoc
class __$PriceDtoCopyWithImpl<$Res> implements _$PriceDtoCopyWith<$Res> {
  __$PriceDtoCopyWithImpl(this._self, this._then);

  final _PriceDto _self;
  final $Res Function(_PriceDto) _then;

  /// Create a copy of PriceDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? currency = null,
    Object? amount = null,
  }) {
    return _then(_PriceDto(
      currency: null == currency
          ? _self.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
