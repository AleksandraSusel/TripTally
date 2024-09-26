import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trip_tally/data/dto/expenses/expense_category_dto.dart';

part 'expense_category_entity.freezed.dart';

@freezed
class ExpenseCategoryEntity with _$ExpenseCategoryEntity {
  const factory ExpenseCategoryEntity({
    required String id,
    required String name,
    required String translationKey,
  }) = _ExpenseCategoryEntity;

  factory ExpenseCategoryEntity.fromDto(ExpenseCategoryDto dto) {
    return ExpenseCategoryEntity(
      id: dto.id,
      name: dto.name,
      translationKey: dto.translationKey,
    );
  }
}
