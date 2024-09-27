// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'price_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PriceDto _$PriceDtoFromJson(Map<String, dynamic> json) {
  return _PriceDto.fromJson(json);
}

/// @nodoc
mixin _$PriceDto {
  String get currency => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PriceDtoCopyWith<PriceDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceDtoCopyWith<$Res> {
  factory $PriceDtoCopyWith(PriceDto value, $Res Function(PriceDto) then) = _$PriceDtoCopyWithImpl<$Res, PriceDto>;
  @useResult
  $Res call({String currency, String amount});
}

/// @nodoc
class _$PriceDtoCopyWithImpl<$Res, $Val extends PriceDto> implements $PriceDtoCopyWith<$Res> {
  _$PriceDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currency = null,
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PriceDtoImplCopyWith<$Res> implements $PriceDtoCopyWith<$Res> {
  factory _$$PriceDtoImplCopyWith(_$PriceDtoImpl value, $Res Function(_$PriceDtoImpl) then) =
      __$$PriceDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String currency, String amount});
}

/// @nodoc
class __$$PriceDtoImplCopyWithImpl<$Res> extends _$PriceDtoCopyWithImpl<$Res, _$PriceDtoImpl>
    implements _$$PriceDtoImplCopyWith<$Res> {
  __$$PriceDtoImplCopyWithImpl(_$PriceDtoImpl _value, $Res Function(_$PriceDtoImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currency = null,
    Object? amount = null,
  }) {
    return _then(_$PriceDtoImpl(
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PriceDtoImpl implements _PriceDto {
  const _$PriceDtoImpl({required this.currency, required this.amount});

  factory _$PriceDtoImpl.fromJson(Map<String, dynamic> json) => _$$PriceDtoImplFromJson(json);

  @override
  final String currency;
  @override
  final String amount;

  @override
  String toString() {
    return 'PriceDto(currency: $currency, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PriceDtoImpl &&
            (identical(other.currency, currency) || other.currency == currency) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, currency, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PriceDtoImplCopyWith<_$PriceDtoImpl> get copyWith =>
      __$$PriceDtoImplCopyWithImpl<_$PriceDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PriceDtoImplToJson(
      this,
    );
  }
}

abstract class _PriceDto implements PriceDto {
  const factory _PriceDto({required final String currency, required final String amount}) = _$PriceDtoImpl;

  factory _PriceDto.fromJson(Map<String, dynamic> json) = _$PriceDtoImpl.fromJson;

  @override
  String get currency;
  @override
  String get amount;
  @override
  @JsonKey(ignore: true)
  _$$PriceDtoImplCopyWith<_$PriceDtoImpl> get copyWith => throw _privateConstructorUsedError;
}
