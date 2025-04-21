// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expense_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ExpenseEntity {
  String get name;
  String get date;
  PriceEntity get price;
  String get categoryId;
  String? get tripId;
  ExpenseCategoryEntity? get category;

  /// Create a copy of ExpenseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ExpenseEntityCopyWith<ExpenseEntity> get copyWith =>
      _$ExpenseEntityCopyWithImpl<ExpenseEntity>(this as ExpenseEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ExpenseEntity &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.categoryId, categoryId) || other.categoryId == categoryId) &&
            (identical(other.tripId, tripId) || other.tripId == tripId) &&
            (identical(other.category, category) || other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, date, price, categoryId, tripId, category);

  @override
  String toString() {
    return 'ExpenseEntity(name: $name, date: $date, price: $price, categoryId: $categoryId, tripId: $tripId, category: $category)';
  }
}

/// @nodoc
abstract mixin class $ExpenseEntityCopyWith<$Res> {
  factory $ExpenseEntityCopyWith(ExpenseEntity value, $Res Function(ExpenseEntity) _then) = _$ExpenseEntityCopyWithImpl;
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
class _$ExpenseEntityCopyWithImpl<$Res> implements $ExpenseEntityCopyWith<$Res> {
  _$ExpenseEntityCopyWithImpl(this._self, this._then);

  final ExpenseEntity _self;
  final $Res Function(ExpenseEntity) _then;

  /// Create a copy of ExpenseEntity
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as PriceEntity,
      categoryId: null == categoryId
          ? _self.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      tripId: freezed == tripId
          ? _self.tripId
          : tripId // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as ExpenseCategoryEntity?,
    ));
  }

  /// Create a copy of ExpenseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PriceEntityCopyWith<$Res> get price {
    return $PriceEntityCopyWith<$Res>(_self.price, (value) {
      return _then(_self.copyWith(price: value));
    });
  }

  /// Create a copy of ExpenseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExpenseCategoryEntityCopyWith<$Res>? get category {
    if (_self.category == null) {
      return null;
    }

    return $ExpenseCategoryEntityCopyWith<$Res>(_self.category!, (value) {
      return _then(_self.copyWith(category: value));
    });
  }
}

/// @nodoc

class _ExpenseEntity implements ExpenseEntity {
  const _ExpenseEntity(
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

  /// Create a copy of ExpenseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ExpenseEntityCopyWith<_ExpenseEntity> get copyWith =>
      __$ExpenseEntityCopyWithImpl<_ExpenseEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ExpenseEntity &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.categoryId, categoryId) || other.categoryId == categoryId) &&
            (identical(other.tripId, tripId) || other.tripId == tripId) &&
            (identical(other.category, category) || other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, date, price, categoryId, tripId, category);

  @override
  String toString() {
    return 'ExpenseEntity(name: $name, date: $date, price: $price, categoryId: $categoryId, tripId: $tripId, category: $category)';
  }
}

/// @nodoc
abstract mixin class _$ExpenseEntityCopyWith<$Res> implements $ExpenseEntityCopyWith<$Res> {
  factory _$ExpenseEntityCopyWith(_ExpenseEntity value, $Res Function(_ExpenseEntity) _then) =
      __$ExpenseEntityCopyWithImpl;
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
class __$ExpenseEntityCopyWithImpl<$Res> implements _$ExpenseEntityCopyWith<$Res> {
  __$ExpenseEntityCopyWithImpl(this._self, this._then);

  final _ExpenseEntity _self;
  final $Res Function(_ExpenseEntity) _then;

  /// Create a copy of ExpenseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? date = null,
    Object? price = null,
    Object? categoryId = null,
    Object? tripId = freezed,
    Object? category = freezed,
  }) {
    return _then(_ExpenseEntity(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as PriceEntity,
      categoryId: null == categoryId
          ? _self.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      tripId: freezed == tripId
          ? _self.tripId
          : tripId // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as ExpenseCategoryEntity?,
    ));
  }

  /// Create a copy of ExpenseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PriceEntityCopyWith<$Res> get price {
    return $PriceEntityCopyWith<$Res>(_self.price, (value) {
      return _then(_self.copyWith(price: value));
    });
  }

  /// Create a copy of ExpenseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExpenseCategoryEntityCopyWith<$Res>? get category {
    if (_self.category == null) {
      return null;
    }

    return $ExpenseCategoryEntityCopyWith<$Res>(_self.category!, (value) {
      return _then(_self.copyWith(category: value));
    });
  }
}

// dart format on
