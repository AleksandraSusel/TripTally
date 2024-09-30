// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_expenses_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateExpensesDto _$CreateExpensesDtoFromJson(Map<String, dynamic> json) {
  return _CreateExpensesDto.fromJson(json);
}

/// @nodoc
mixin _$CreateExpensesDto {
  List<ExpenseDto> get expenses => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateExpensesDtoCopyWith<CreateExpensesDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateExpensesDtoCopyWith<$Res> {
  factory $CreateExpensesDtoCopyWith(CreateExpensesDto value, $Res Function(CreateExpensesDto) then) =
      _$CreateExpensesDtoCopyWithImpl<$Res, CreateExpensesDto>;
  @useResult
  $Res call({List<ExpenseDto> expenses});
}

/// @nodoc
class _$CreateExpensesDtoCopyWithImpl<$Res, $Val extends CreateExpensesDto>
    implements $CreateExpensesDtoCopyWith<$Res> {
  _$CreateExpensesDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expenses = null,
  }) {
    return _then(_value.copyWith(
      expenses: null == expenses
          ? _value.expenses
          : expenses // ignore: cast_nullable_to_non_nullable
              as List<ExpenseDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateExpensesDtoImplCopyWith<$Res> implements $CreateExpensesDtoCopyWith<$Res> {
  factory _$$CreateExpensesDtoImplCopyWith(_$CreateExpensesDtoImpl value, $Res Function(_$CreateExpensesDtoImpl) then) =
      __$$CreateExpensesDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ExpenseDto> expenses});
}

/// @nodoc
class __$$CreateExpensesDtoImplCopyWithImpl<$Res> extends _$CreateExpensesDtoCopyWithImpl<$Res, _$CreateExpensesDtoImpl>
    implements _$$CreateExpensesDtoImplCopyWith<$Res> {
  __$$CreateExpensesDtoImplCopyWithImpl(_$CreateExpensesDtoImpl _value, $Res Function(_$CreateExpensesDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expenses = null,
  }) {
    return _then(_$CreateExpensesDtoImpl(
      expenses: null == expenses
          ? _value._expenses
          : expenses // ignore: cast_nullable_to_non_nullable
              as List<ExpenseDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateExpensesDtoImpl implements _CreateExpensesDto {
  const _$CreateExpensesDtoImpl({required final List<ExpenseDto> expenses}) : _expenses = expenses;

  factory _$CreateExpensesDtoImpl.fromJson(Map<String, dynamic> json) => _$$CreateExpensesDtoImplFromJson(json);

  final List<ExpenseDto> _expenses;
  @override
  List<ExpenseDto> get expenses {
    if (_expenses is EqualUnmodifiableListView) return _expenses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_expenses);
  }

  @override
  String toString() {
    return 'CreateExpensesDto(expenses: $expenses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateExpensesDtoImpl &&
            const DeepCollectionEquality().equals(other._expenses, _expenses));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_expenses));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateExpensesDtoImplCopyWith<_$CreateExpensesDtoImpl> get copyWith =>
      __$$CreateExpensesDtoImplCopyWithImpl<_$CreateExpensesDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateExpensesDtoImplToJson(
      this,
    );
  }
}

abstract class _CreateExpensesDto implements CreateExpensesDto {
  const factory _CreateExpensesDto({required final List<ExpenseDto> expenses}) = _$CreateExpensesDtoImpl;

  factory _CreateExpensesDto.fromJson(Map<String, dynamic> json) = _$CreateExpensesDtoImpl.fromJson;

  @override
  List<ExpenseDto> get expenses;
  @override
  @JsonKey(ignore: true)
  _$$CreateExpensesDtoImplCopyWith<_$CreateExpensesDtoImpl> get copyWith => throw _privateConstructorUsedError;
}
