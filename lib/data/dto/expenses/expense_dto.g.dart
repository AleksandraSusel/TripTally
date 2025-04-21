// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expense_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ExpenseDto _$ExpenseDtoFromJson(Map<String, dynamic> json) => _ExpenseDto(
      name: json['name'] as String,
      date: json['date'] as String,
      price: PriceDto.fromJson(json['price'] as Map<String, dynamic>),
      categoryId: json['category_id'] as String,
      tripId: json['trip_id'] as String?,
      category: json['category'] == null ? null : ExpenseCategoryDto.fromJson(json['category'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ExpenseDtoToJson(_ExpenseDto instance) => <String, dynamic>{
      'name': instance.name,
      'date': instance.date,
      'price': instance.price.toJson(),
      'category_id': instance.categoryId,
      'trip_id': instance.tripId,
      'category': instance.category?.toJson(),
    };
