// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_expenses_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateExpensesDtoImpl _$$CreateExpensesDtoImplFromJson(Map<String, dynamic> json) => _$CreateExpensesDtoImpl(
      expenses: (json['expenses'] as List<dynamic>).map((e) => ExpenseDto.fromJson(e as Map<String, dynamic>)).toList(),
    );

Map<String, dynamic> _$$CreateExpensesDtoImplToJson(_$CreateExpensesDtoImpl instance) => <String, dynamic>{
      'expenses': instance.expenses.map((e) => e.toJson()).toList(),
    };
