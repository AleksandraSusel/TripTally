// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expense_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExpenseDtoImpl _$$ExpenseDtoImplFromJson(Map<String, dynamic> json) => _$ExpenseDtoImpl(
      name: json['name'] as String,
      date: json['date'] as String,
      price: PriceDto.fromJson(json['price'] as Map<String, dynamic>),
      categoryId: json['category_id'] as String,
      tripId: json['trip_id'] as String?,
      category: json['category'] == null ? null : ExpenseCategoryDto.fromJson(json['category'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ExpenseDtoImplToJson(_$ExpenseDtoImpl instance) => <String, dynamic>{
      'name': instance.name,
      'date': instance.date,
      'price': instance.price.toJson(),
      'category_id': instance.categoryId,
      'trip_id': instance.tripId,
      'category': instance.category?.toJson(),
    };
