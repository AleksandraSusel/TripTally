// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expense_categories_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ExpenseCategoriesEntity {
  List<ExpenseCategoryEntity> get categories;

  /// Create a copy of ExpenseCategoriesEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ExpenseCategoriesEntityCopyWith<ExpenseCategoriesEntity> get copyWith =>
      _$ExpenseCategoriesEntityCopyWithImpl<ExpenseCategoriesEntity>(this as ExpenseCategoriesEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ExpenseCategoriesEntity &&
            const DeepCollectionEquality().equals(other.categories, categories));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(categories));

  @override
  String toString() {
    return 'ExpenseCategoriesEntity(categories: $categories)';
  }
}

/// @nodoc
abstract mixin class $ExpenseCategoriesEntityCopyWith<$Res> {
  factory $ExpenseCategoriesEntityCopyWith(
          ExpenseCategoriesEntity value, $Res Function(ExpenseCategoriesEntity) _then) =
      _$ExpenseCategoriesEntityCopyWithImpl;
  @useResult
  $Res call({List<ExpenseCategoryEntity> categories});
}

/// @nodoc
class _$ExpenseCategoriesEntityCopyWithImpl<$Res> implements $ExpenseCategoriesEntityCopyWith<$Res> {
  _$ExpenseCategoriesEntityCopyWithImpl(this._self, this._then);

  final ExpenseCategoriesEntity _self;
  final $Res Function(ExpenseCategoriesEntity) _then;

  /// Create a copy of ExpenseCategoriesEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
  }) {
    return _then(_self.copyWith(
      categories: null == categories
          ? _self.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<ExpenseCategoryEntity>,
    ));
  }
}

/// @nodoc

class _ExpenseCategoriesEntity implements ExpenseCategoriesEntity {
  const _ExpenseCategoriesEntity({required final List<ExpenseCategoryEntity> categories}) : _categories = categories;

  final List<ExpenseCategoryEntity> _categories;
  @override
  List<ExpenseCategoryEntity> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  /// Create a copy of ExpenseCategoriesEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ExpenseCategoriesEntityCopyWith<_ExpenseCategoriesEntity> get copyWith =>
      __$ExpenseCategoriesEntityCopyWithImpl<_ExpenseCategoriesEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ExpenseCategoriesEntity &&
            const DeepCollectionEquality().equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_categories));

  @override
  String toString() {
    return 'ExpenseCategoriesEntity(categories: $categories)';
  }
}

/// @nodoc
abstract mixin class _$ExpenseCategoriesEntityCopyWith<$Res> implements $ExpenseCategoriesEntityCopyWith<$Res> {
  factory _$ExpenseCategoriesEntityCopyWith(
          _ExpenseCategoriesEntity value, $Res Function(_ExpenseCategoriesEntity) _then) =
      __$ExpenseCategoriesEntityCopyWithImpl;
  @override
  @useResult
  $Res call({List<ExpenseCategoryEntity> categories});
}

/// @nodoc
class __$ExpenseCategoriesEntityCopyWithImpl<$Res> implements _$ExpenseCategoriesEntityCopyWith<$Res> {
  __$ExpenseCategoriesEntityCopyWithImpl(this._self, this._then);

  final _ExpenseCategoriesEntity _self;
  final $Res Function(_ExpenseCategoriesEntity) _then;

  /// Create a copy of ExpenseCategoriesEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? categories = null,
  }) {
    return _then(_ExpenseCategoriesEntity(
      categories: null == categories
          ? _self._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<ExpenseCategoryEntity>,
    ));
  }
}

// dart format on
