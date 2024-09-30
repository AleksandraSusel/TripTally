// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expense_categories_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExpenseCategoriesDto _$ExpenseCategoriesDtoFromJson(Map<String, dynamic> json) {
  return _ExpenseCategoriesDto.fromJson(json);
}

/// @nodoc
mixin _$ExpenseCategoriesDto {
  List<ExpenseCategoryDto> get categories => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExpenseCategoriesDtoCopyWith<ExpenseCategoriesDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseCategoriesDtoCopyWith<$Res> {
  factory $ExpenseCategoriesDtoCopyWith(ExpenseCategoriesDto value, $Res Function(ExpenseCategoriesDto) then) =
      _$ExpenseCategoriesDtoCopyWithImpl<$Res, ExpenseCategoriesDto>;

  @useResult
  $Res call({List<ExpenseCategoryDto> categories});
}

/// @nodoc
class _$ExpenseCategoriesDtoCopyWithImpl<$Res, $Val extends ExpenseCategoriesDto>
    implements $ExpenseCategoriesDtoCopyWith<$Res> {
  _$ExpenseCategoriesDtoCopyWithImpl(this._value, this._then);

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
              as List<ExpenseCategoryDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExpenseCategoriesDtoImplCopyWith<$Res> implements $ExpenseCategoriesDtoCopyWith<$Res> {
  factory _$$ExpenseCategoriesDtoImplCopyWith(
          _$ExpenseCategoriesDtoImpl value, $Res Function(_$ExpenseCategoriesDtoImpl) then) =
      __$$ExpenseCategoriesDtoImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call({List<ExpenseCategoryDto> categories});
}

/// @nodoc
class __$$ExpenseCategoriesDtoImplCopyWithImpl<$Res>
    extends _$ExpenseCategoriesDtoCopyWithImpl<$Res, _$ExpenseCategoriesDtoImpl>
    implements _$$ExpenseCategoriesDtoImplCopyWith<$Res> {
  __$$ExpenseCategoriesDtoImplCopyWithImpl(
      _$ExpenseCategoriesDtoImpl _value, $Res Function(_$ExpenseCategoriesDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
  }) {
    return _then(_$ExpenseCategoriesDtoImpl(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<ExpenseCategoryDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExpenseCategoriesDtoImpl implements _ExpenseCategoriesDto {
  const _$ExpenseCategoriesDtoImpl({required final List<ExpenseCategoryDto> categories}) : _categories = categories;

  factory _$ExpenseCategoriesDtoImpl.fromJson(Map<String, dynamic> json) => _$$ExpenseCategoriesDtoImplFromJson(json);

  final List<ExpenseCategoryDto> _categories;

  @override
  List<ExpenseCategoryDto> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'ExpenseCategoriesDto(categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpenseCategoriesDtoImpl &&
            const DeepCollectionEquality().equals(other._categories, _categories));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_categories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpenseCategoriesDtoImplCopyWith<_$ExpenseCategoriesDtoImpl> get copyWith =>
      __$$ExpenseCategoriesDtoImplCopyWithImpl<_$ExpenseCategoriesDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExpenseCategoriesDtoImplToJson(
      this,
    );
  }
}

abstract class _ExpenseCategoriesDto implements ExpenseCategoriesDto {
  const factory _ExpenseCategoriesDto({required final List<ExpenseCategoryDto> categories}) =
      _$ExpenseCategoriesDtoImpl;

  factory _ExpenseCategoriesDto.fromJson(Map<String, dynamic> json) = _$ExpenseCategoriesDtoImpl.fromJson;

  @override
  List<ExpenseCategoryDto> get categories;

  @override
  @JsonKey(ignore: true)
  _$$ExpenseCategoriesDtoImplCopyWith<_$ExpenseCategoriesDtoImpl> get copyWith => throw _privateConstructorUsedError;
}
