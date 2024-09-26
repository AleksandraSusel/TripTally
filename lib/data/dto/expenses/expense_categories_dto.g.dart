// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expense_categories_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExpenseCategoriesDtoImpl _$$ExpenseCategoriesDtoImplFromJson(Map<String, dynamic> json) => _$ExpenseCategoriesDtoImpl(
      categories: (json['categories'] as List<dynamic>)
          .map((e) => ExpenseCategoryDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ExpenseCategoriesDtoImplToJson(_$ExpenseCategoriesDtoImpl instance) => <String, dynamic>{
      'categories': instance.categories.map((e) => e.toJson()).toList(),
    };
