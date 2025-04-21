// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_expenses_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateExpensesDto _$CreateExpensesDtoFromJson(Map<String, dynamic> json) => _CreateExpensesDto(
      expenses: (json['expenses'] as List<dynamic>).map((e) => ExpenseDto.fromJson(e as Map<String, dynamic>)).toList(),
    );

Map<String, dynamic> _$CreateExpensesDtoToJson(_CreateExpensesDto instance) => <String, dynamic>{
      'expenses': instance.expenses.map((e) => e.toJson()).toList(),
    };
