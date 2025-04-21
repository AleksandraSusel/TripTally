// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expense_category_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ExpenseCategoryDto _$ExpenseCategoryDtoFromJson(Map<String, dynamic> json) => _ExpenseCategoryDto(
      id: json['id'] as String,
      name: json['name'] as String,
      translationKey: json['translation_key'] as String,
    );

Map<String, dynamic> _$ExpenseCategoryDtoToJson(_ExpenseCategoryDto instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'translation_key': instance.translationKey,
    };
