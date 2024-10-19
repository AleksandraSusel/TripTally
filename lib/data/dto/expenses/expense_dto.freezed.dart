// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expense_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExpenseDto _$ExpenseDtoFromJson(Map<String, dynamic> json) {
  return _ExpenseDto.fromJson(json);
}

/// @nodoc
mixin _$ExpenseDto {
  String get name => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  PriceDto get price => throw _privateConstructorUsedError;
  String get tripId => throw _privateConstructorUsedError;
  String get categoryId => throw _privateConstructorUsedError;
  ExpenseCategoryDto? get category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExpenseDtoCopyWith<ExpenseDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseDtoCopyWith<$Res> {
  factory $ExpenseDtoCopyWith(ExpenseDto value, $Res Function(ExpenseDto) then) =
      _$ExpenseDtoCopyWithImpl<$Res, ExpenseDto>;
  @useResult
  $Res call({String name, String date, PriceDto price, String tripId, String categoryId, ExpenseCategoryDto? category});

  $PriceDtoCopyWith<$Res> get price;
  $ExpenseCategoryDtoCopyWith<$Res>? get category;
}

/// @nodoc
class _$ExpenseDtoCopyWithImpl<$Res, $Val extends ExpenseDto> implements $ExpenseDtoCopyWith<$Res> {
  _$ExpenseDtoCopyWithImpl(this._value, this._then);

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
    Object? tripId = null,
    Object? categoryId = null,
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
              as PriceDto,
      tripId: null == tripId
          ? _value.tripId
          : tripId // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ExpenseCategoryDto?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PriceDtoCopyWith<$Res> get price {
    return $PriceDtoCopyWith<$Res>(_value.price, (value) {
      return _then(_value.copyWith(price: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ExpenseCategoryDtoCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $ExpenseCategoryDtoCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ExpenseDtoImplCopyWith<$Res> implements $ExpenseDtoCopyWith<$Res> {
  factory _$$ExpenseDtoImplCopyWith(_$ExpenseDtoImpl value, $Res Function(_$ExpenseDtoImpl) then) =
      __$$ExpenseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String date, PriceDto price, String tripId, String categoryId, ExpenseCategoryDto? category});

  @override
  $PriceDtoCopyWith<$Res> get price;
  @override
  $ExpenseCategoryDtoCopyWith<$Res>? get category;
}

/// @nodoc
class __$$ExpenseDtoImplCopyWithImpl<$Res> extends _$ExpenseDtoCopyWithImpl<$Res, _$ExpenseDtoImpl>
    implements _$$ExpenseDtoImplCopyWith<$Res> {
  __$$ExpenseDtoImplCopyWithImpl(_$ExpenseDtoImpl _value, $Res Function(_$ExpenseDtoImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? date = null,
    Object? price = null,
    Object? tripId = null,
    Object? categoryId = null,
    Object? category = freezed,
  }) {
    return _then(_$ExpenseDtoImpl(
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
              as PriceDto,
      tripId: null == tripId
          ? _value.tripId
          : tripId // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ExpenseCategoryDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExpenseDtoImpl implements _ExpenseDto {
  const _$ExpenseDtoImpl(
      {required this.name,
      required this.date,
      required this.price,
      required this.tripId,
      required this.categoryId,
      this.category});

  factory _$ExpenseDtoImpl.fromJson(Map<String, dynamic> json) => _$$ExpenseDtoImplFromJson(json);

  @override
  final String name;
  @override
  final String date;
  @override
  final PriceDto price;
  @override
  final String tripId;
  @override
  final String categoryId;
  @override
  final ExpenseCategoryDto? category;

  @override
  String toString() {
    return 'ExpenseDto(name: $name, date: $date, price: $price, tripId: $tripId, categoryId: $categoryId, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpenseDtoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.tripId, tripId) || other.tripId == tripId) &&
            (identical(other.categoryId, categoryId) || other.categoryId == categoryId) &&
            (identical(other.category, category) || other.category == category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, date, price, tripId, categoryId, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpenseDtoImplCopyWith<_$ExpenseDtoImpl> get copyWith =>
      __$$ExpenseDtoImplCopyWithImpl<_$ExpenseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExpenseDtoImplToJson(
      this,
    );
  }
}

abstract class _ExpenseDto implements ExpenseDto {
  const factory _ExpenseDto(
      {required final String name,
      required final String date,
      required final PriceDto price,
      required final String tripId,
      required final String categoryId,
      final ExpenseCategoryDto? category}) = _$ExpenseDtoImpl;

  factory _ExpenseDto.fromJson(Map<String, dynamic> json) = _$ExpenseDtoImpl.fromJson;

  @override
  String get name;
  @override
  String get date;
  @override
  PriceDto get price;
  @override
  String get tripId;
  @override
  String get categoryId;
  @override
  ExpenseCategoryDto? get category;
  @override
  @JsonKey(ignore: true)
  _$$ExpenseDtoImplCopyWith<_$ExpenseDtoImpl> get copyWith => throw _privateConstructorUsedError;
}
