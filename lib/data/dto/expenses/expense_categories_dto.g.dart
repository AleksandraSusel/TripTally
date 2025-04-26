// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expense_categories_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ExpenseCategoriesDto _$ExpenseCategoriesDtoFromJson(Map<String, dynamic> json) => _ExpenseCategoriesDto(
      categories: (json['categories'] as List<dynamic>)
          .map((e) => ExpenseCategoryDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ExpenseCategoriesDtoToJson(_ExpenseCategoriesDto instance) => <String, dynamic>{
      'categories': instance.categories.map((e) => e.toJson()).toList(),
    };
