import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trip_tally/data/dto/expenses/expense_categories_dto.dart';
import 'package:trip_tally/domain/entities/expenses/expense_category_entity.dart';

part 'expense_categories_entity.freezed.dart';

@freezed
class ExpenseCategoriesEntity with _$ExpenseCategoriesEntity {
  const factory ExpenseCategoriesEntity({
    required List<ExpenseCategoryEntity> categories,
  }) = _ExpenseCategoriesEntity;

  factory ExpenseCategoriesEntity.fromDto(ExpenseCategoriesDto dto) {
    return ExpenseCategoriesEntity(
      categories: dto.categories.map(ExpenseCategoryEntity.fromDto).toList(),
    );
  }
}
