// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'price_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PriceEntity {
  String get currency;
  String get amount;

  /// Create a copy of PriceEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PriceEntityCopyWith<PriceEntity> get copyWith =>
      _$PriceEntityCopyWithImpl<PriceEntity>(this as PriceEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PriceEntity &&
            (identical(other.currency, currency) || other.currency == currency) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currency, amount);

  @override
  String toString() {
    return 'PriceEntity(currency: $currency, amount: $amount)';
  }
}

/// @nodoc
abstract mixin class $PriceEntityCopyWith<$Res> {
  factory $PriceEntityCopyWith(PriceEntity value, $Res Function(PriceEntity) _then) = _$PriceEntityCopyWithImpl;
  @useResult
  $Res call({String currency, String amount});
}

/// @nodoc
class _$PriceEntityCopyWithImpl<$Res> implements $PriceEntityCopyWith<$Res> {
  _$PriceEntityCopyWithImpl(this._self, this._then);

  final PriceEntity _self;
  final $Res Function(PriceEntity) _then;

  /// Create a copy of PriceEntity
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

class _PriceEntity implements PriceEntity {
  const _PriceEntity({required this.currency, required this.amount});

  @override
  final String currency;
  @override
  final String amount;

  /// Create a copy of PriceEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PriceEntityCopyWith<_PriceEntity> get copyWith => __$PriceEntityCopyWithImpl<_PriceEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PriceEntity &&
            (identical(other.currency, currency) || other.currency == currency) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currency, amount);

  @override
  String toString() {
    return 'PriceEntity(currency: $currency, amount: $amount)';
  }
}

/// @nodoc
abstract mixin class _$PriceEntityCopyWith<$Res> implements $PriceEntityCopyWith<$Res> {
  factory _$PriceEntityCopyWith(_PriceEntity value, $Res Function(_PriceEntity) _then) = __$PriceEntityCopyWithImpl;
  @override
  @useResult
  $Res call({String currency, String amount});
}

/// @nodoc
class __$PriceEntityCopyWithImpl<$Res> implements _$PriceEntityCopyWith<$Res> {
  __$PriceEntityCopyWithImpl(this._self, this._then);

  final _PriceEntity _self;
  final $Res Function(_PriceEntity) _then;

  /// Create a copy of PriceEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? currency = null,
    Object? amount = null,
  }) {
    return _then(_PriceEntity(
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
