import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trip_tally/data/dto/expenses/expense_dto.dart';

import 'package:trip_tally/domain/entities/expenses/expense_category_entity.dart';
import 'package:trip_tally/domain/entities/price/price_entity.dart';

part 'expense_entity.freezed.dart';

@freezed
class ExpenseEntity with _$ExpenseEntity {
  const factory ExpenseEntity({
    required String name,
    required String date,
    required PriceEntity price,
    required String tripId,
    required String categoryId,
    ExpenseCategoryEntity? category,
  }) = _ExpenseEntity;

  factory ExpenseEntity.fromDto(ExpenseDto dto) {
    return ExpenseEntity(
      name: dto.name,
      date: dto.date,
      price: PriceEntity.fromDto(dto.price),
      tripId: dto.tripId,
      categoryId: dto.categoryId,
      category: dto.category != null ? ExpenseCategoryEntity.fromDto(dto.category!) : null,
    );
  }
}
