// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expense_categories_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ExpenseCategoriesEntity {
  List<ExpenseCategoryEntity> get categories => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExpenseCategoriesEntityCopyWith<ExpenseCategoriesEntity> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseCategoriesEntityCopyWith<$Res> {
  factory $ExpenseCategoriesEntityCopyWith(ExpenseCategoriesEntity value, $Res Function(ExpenseCategoriesEntity) then) =
      _$ExpenseCategoriesEntityCopyWithImpl<$Res, ExpenseCategoriesEntity>;
  @useResult
  $Res call({List<ExpenseCategoryEntity> categories});
}

/// @nodoc
class _$ExpenseCategoriesEntityCopyWithImpl<$Res, $Val extends ExpenseCategoriesEntity>
    implements $ExpenseCategoriesEntityCopyWith<$Res> {
  _$ExpenseCategoriesEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
  }) {
    return _then(_value.copyWith(
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<ExpenseCategoryEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExpenseCategoriesEntityImplCopyWith<$Res> implements $ExpenseCategoriesEntityCopyWith<$Res> {
  factory _$$ExpenseCategoriesEntityImplCopyWith(
          _$ExpenseCategoriesEntityImpl value, $Res Function(_$ExpenseCategoriesEntityImpl) then) =
      __$$ExpenseCategoriesEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ExpenseCategoryEntity> categories});
}

/// @nodoc
class __$$ExpenseCategoriesEntityImplCopyWithImpl<$Res>
    extends _$ExpenseCategoriesEntityCopyWithImpl<$Res, _$ExpenseCategoriesEntityImpl>
    implements _$$ExpenseCategoriesEntityImplCopyWith<$Res> {
  __$$ExpenseCategoriesEntityImplCopyWithImpl(
      _$ExpenseCategoriesEntityImpl _value, $Res Function(_$ExpenseCategoriesEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
  }) {
    return _then(_$ExpenseCategoriesEntityImpl(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<ExpenseCategoryEntity>,
    ));
  }
}

/// @nodoc

class _$ExpenseCategoriesEntityImpl implements _ExpenseCategoriesEntity {
  const _$ExpenseCategoriesEntityImpl({required final List<ExpenseCategoryEntity> categories})
      : _categories = categories;

  final List<ExpenseCategoryEntity> _categories;
  @override
  List<ExpenseCategoryEntity> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'ExpenseCategoriesEntity(categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpenseCategoriesEntityImpl &&
            const DeepCollectionEquality().equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_categories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpenseCategoriesEntityImplCopyWith<_$ExpenseCategoriesEntityImpl> get copyWith =>
      __$$ExpenseCategoriesEntityImplCopyWithImpl<_$ExpenseCategoriesEntityImpl>(this, _$identity);
}

abstract class _ExpenseCategoriesEntity implements ExpenseCategoriesEntity {
  const factory _ExpenseCategoriesEntity({required final List<ExpenseCategoryEntity> categories}) =
      _$ExpenseCategoriesEntityImpl;

  @override
  List<ExpenseCategoryEntity> get categories;
  @override
  @JsonKey(ignore: true)
  _$$ExpenseCategoriesEntityImplCopyWith<_$ExpenseCategoriesEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
