// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expense_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ExpenseEntity {
  String get name => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  PriceEntity get price => throw _privateConstructorUsedError;
  String get categoryId => throw _privateConstructorUsedError;

  String? get tripId => throw _privateConstructorUsedError;
  ExpenseCategoryEntity? get category => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExpenseEntityCopyWith<ExpenseEntity> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseEntityCopyWith<$Res> {
  factory $ExpenseEntityCopyWith(ExpenseEntity value, $Res Function(ExpenseEntity) then) =
      _$ExpenseEntityCopyWithImpl<$Res, ExpenseEntity>;
  @useResult
  $Res call(
      {String name,
      String date,
      PriceEntity price,
      String categoryId,
      String? tripId,
      ExpenseCategoryEntity? category});

  $PriceEntityCopyWith<$Res> get price;
  $ExpenseCategoryEntityCopyWith<$Res>? get category;
}

/// @nodoc
class _$ExpenseEntityCopyWithImpl<$Res, $Val extends ExpenseEntity> implements $ExpenseEntityCopyWith<$Res> {
  _$ExpenseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? date = null,
    Object? price = null,
    Object? categoryId = null,
    Object? tripId = freezed,
    Object? category = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as PriceEntity,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      tripId: freezed == tripId
          ? _value.tripId
          : tripId // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ExpenseCategoryEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PriceEntityCopyWith<$Res> get price {
    return $PriceEntityCopyWith<$Res>(_value.price, (value) {
      return _then(_value.copyWith(price: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ExpenseCategoryEntityCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $ExpenseCategoryEntityCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ExpenseEntityImplCopyWith<$Res> implements $ExpenseEntityCopyWith<$Res> {
  factory _$$ExpenseEntityImplCopyWith(_$ExpenseEntityImpl value, $Res Function(_$ExpenseEntityImpl) then) =
      __$$ExpenseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String date,
      PriceEntity price,
      String categoryId,
      String? tripId,
      ExpenseCategoryEntity? category});

  @override
  $PriceEntityCopyWith<$Res> get price;
  @override
  $ExpenseCategoryEntityCopyWith<$Res>? get category;
}

/// @nodoc
class __$$ExpenseEntityImplCopyWithImpl<$Res> extends _$ExpenseEntityCopyWithImpl<$Res, _$ExpenseEntityImpl>
    implements _$$ExpenseEntityImplCopyWith<$Res> {
  __$$ExpenseEntityImplCopyWithImpl(_$ExpenseEntityImpl _value, $Res Function(_$ExpenseEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? date = null,
    Object? price = null,
    Object? categoryId = null,
    Object? tripId = freezed,
    Object? category = freezed,
  }) {
    return _then(_$ExpenseEntityImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as PriceEntity,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      tripId: freezed == tripId
          ? _value.tripId
          : tripId // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ExpenseCategoryEntity?,
    ));
  }
}

/// @nodoc

class _$ExpenseEntityImpl implements _ExpenseEntity {
  const _$ExpenseEntityImpl(
      {required this.name,
      required this.date,
      required this.price,
      required this.categoryId,
      this.tripId,
      this.category});

  @override
  final String name;
  @override
  final String date;
  @override
  final PriceEntity price;
  @override
  final String categoryId;
  @override
  final String? tripId;
  @override
  final ExpenseCategoryEntity? category;

  @override
  String toString() {
    return 'ExpenseEntity(name: $name, date: $date, price: $price, categoryId: $categoryId, tripId: $tripId, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpenseEntityImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.categoryId, categoryId) || other.categoryId == categoryId) &&
            (identical(other.tripId, tripId) || other.tripId == tripId) &&
            (identical(other.category, category) || other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, date, price, categoryId, tripId, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpenseEntityImplCopyWith<_$ExpenseEntityImpl> get copyWith =>
      __$$ExpenseEntityImplCopyWithImpl<_$ExpenseEntityImpl>(this, _$identity);
}

abstract class _ExpenseEntity implements ExpenseEntity {
  const factory _ExpenseEntity(
      {required final String name,
      required final String date,
      required final PriceEntity price,
      required final String categoryId,
      final String? tripId,
      final ExpenseCategoryEntity? category}) = _$ExpenseEntityImpl;

  @override
  String get name;
  @override
  String get date;
  @override
  PriceEntity get price;
  @override
  String get categoryId;
  @override
  String? get tripId;
  @override
  ExpenseCategoryEntity? get category;
  @override
  @JsonKey(ignore: true)
  _$$ExpenseEntityImplCopyWith<_$ExpenseEntityImpl> get copyWith => throw _privateConstructorUsedError;
}
