// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_expenses_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateExpensesDto {
  List<ExpenseDto> get expenses;

  /// Create a copy of CreateExpensesDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateExpensesDtoCopyWith<CreateExpensesDto> get copyWith =>
      _$CreateExpensesDtoCopyWithImpl<CreateExpensesDto>(this as CreateExpensesDto, _$identity);

  /// Serializes this CreateExpensesDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateExpensesDto &&
            const DeepCollectionEquality().equals(other.expenses, expenses));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(expenses));

  @override
  String toString() {
    return 'CreateExpensesDto(expenses: $expenses)';
  }
}

/// @nodoc
abstract mixin class $CreateExpensesDtoCopyWith<$Res> {
  factory $CreateExpensesDtoCopyWith(CreateExpensesDto value, $Res Function(CreateExpensesDto) _then) =
      _$CreateExpensesDtoCopyWithImpl;
  @useResult
  $Res call({List<ExpenseDto> expenses});
}

/// @nodoc
class _$CreateExpensesDtoCopyWithImpl<$Res> implements $CreateExpensesDtoCopyWith<$Res> {
  _$CreateExpensesDtoCopyWithImpl(this._self, this._then);

  final CreateExpensesDto _self;
  final $Res Function(CreateExpensesDto) _then;

  /// Create a copy of CreateExpensesDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expenses = null,
  }) {
    return _then(_self.copyWith(
      expenses: null == expenses
          ? _self.expenses
          : expenses // ignore: cast_nullable_to_non_nullable
              as List<ExpenseDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _CreateExpensesDto implements CreateExpensesDto {
  const _CreateExpensesDto({required final List<ExpenseDto> expenses}) : _expenses = expenses;
  factory _CreateExpensesDto.fromJson(Map<String, dynamic> json) => _$CreateExpensesDtoFromJson(json);

  final List<ExpenseDto> _expenses;
  @override
  List<ExpenseDto> get expenses {
    if (_expenses is EqualUnmodifiableListView) return _expenses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_expenses);
  }

  /// Create a copy of CreateExpensesDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateExpensesDtoCopyWith<_CreateExpensesDto> get copyWith =>
      __$CreateExpensesDtoCopyWithImpl<_CreateExpensesDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateExpensesDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateExpensesDto &&
            const DeepCollectionEquality().equals(other._expenses, _expenses));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_expenses));

  @override
  String toString() {
    return 'CreateExpensesDto(expenses: $expenses)';
  }
}

/// @nodoc
abstract mixin class _$CreateExpensesDtoCopyWith<$Res> implements $CreateExpensesDtoCopyWith<$Res> {
  factory _$CreateExpensesDtoCopyWith(_CreateExpensesDto value, $Res Function(_CreateExpensesDto) _then) =
      __$CreateExpensesDtoCopyWithImpl;
  @override
  @useResult
  $Res call({List<ExpenseDto> expenses});
}

/// @nodoc
class __$CreateExpensesDtoCopyWithImpl<$Res> implements _$CreateExpensesDtoCopyWith<$Res> {
  __$CreateExpensesDtoCopyWithImpl(this._self, this._then);

  final _CreateExpensesDto _self;
  final $Res Function(_CreateExpensesDto) _then;

  /// Create a copy of CreateExpensesDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? expenses = null,
  }) {
    return _then(_CreateExpensesDto(
      expenses: null == expenses
          ? _self._expenses
          : expenses // ignore: cast_nullable_to_non_nullable
              as List<ExpenseDto>,
    ));
  }
}

// dart format on
