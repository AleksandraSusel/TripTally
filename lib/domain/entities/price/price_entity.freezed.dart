// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'price_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PriceEntity {
  String get currency => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PriceEntityCopyWith<PriceEntity> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceEntityCopyWith<$Res> {
  factory $PriceEntityCopyWith(PriceEntity value, $Res Function(PriceEntity) then) =
      _$PriceEntityCopyWithImpl<$Res, PriceEntity>;
  @useResult
  $Res call({String currency, String amount});
}

/// @nodoc
class _$PriceEntityCopyWithImpl<$Res, $Val extends PriceEntity> implements $PriceEntityCopyWith<$Res> {
  _$PriceEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$PriceEntityImplCopyWith<$Res> implements $PriceEntityCopyWith<$Res> {
  factory _$$PriceEntityImplCopyWith(_$PriceEntityImpl value, $Res Function(_$PriceEntityImpl) then) =
      __$$PriceEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String currency, String amount});
}

/// @nodoc
class __$$PriceEntityImplCopyWithImpl<$Res> extends _$PriceEntityCopyWithImpl<$Res, _$PriceEntityImpl>
    implements _$$PriceEntityImplCopyWith<$Res> {
  __$$PriceEntityImplCopyWithImpl(_$PriceEntityImpl _value, $Res Function(_$PriceEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currency = null,
    Object? amount = null,
  }) {
    return _then(_$PriceEntityImpl(
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

class _$PriceEntityImpl implements _PriceEntity {
  const _$PriceEntityImpl({required this.currency, required this.amount});

  @override
  final String currency;
  @override
  final String amount;

  @override
  String toString() {
    return 'PriceEntity(currency: $currency, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PriceEntityImpl &&
            (identical(other.currency, currency) || other.currency == currency) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currency, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PriceEntityImplCopyWith<_$PriceEntityImpl> get copyWith =>
      __$$PriceEntityImplCopyWithImpl<_$PriceEntityImpl>(this, _$identity);
}

abstract class _PriceEntity implements PriceEntity {
  const factory _PriceEntity({required final String currency, required final String amount}) = _$PriceEntityImpl;

  @override
  String get currency;
  @override
  String get amount;
  @override
  @JsonKey(ignore: true)
  _$$PriceEntityImplCopyWith<_$PriceEntityImpl> get copyWith => throw _privateConstructorUsedError;
}
