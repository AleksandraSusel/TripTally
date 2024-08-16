// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expense_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExpenseDtoImpl _$$ExpenseDtoImplFromJson(Map<String, dynamic> json) => _$ExpenseDtoImpl(
      name: json['name'] as String,
      date: json['date'] as String,
      amount: (json['amount'] as num).toDouble(),
      currency: json['currency'] as String,
      tripId: json['trip_id'] as String,
    );

Map<String, dynamic> _$$ExpenseDtoImplToJson(_$ExpenseDtoImpl instance) => <String, dynamic>{
      'name': instance.name,
      'date': instance.date,
      'amount': instance.amount,
      'currency': instance.currency,
      'trip_id': instance.tripId,
    };
