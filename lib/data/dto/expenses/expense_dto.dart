import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trip_tally/data/dto/expenses/expense_category_dto.dart';
import 'package:trip_tally/data/dto/price/price_dto.dart';
import 'package:trip_tally/domain/entities/expenses/expense_entity.dart';

part 'expense_dto.freezed.dart';

part 'expense_dto.g.dart';

@freezed
class ExpenseDto with _$ExpenseDto {
  const factory ExpenseDto({
    required String name,
    required String date,
    required PriceDto price,
    required String categoryId,
    String? tripId,
    ExpenseCategoryDto? category,
  }) = _ExpenseDto;

  factory ExpenseDto.fromJson(Map<String, dynamic> json) => _$ExpenseDtoFromJson(json);

  factory ExpenseDto.fromEntity(ExpenseEntity entity) {
    return ExpenseDto(
      name: entity.name,
      date: entity.date,
      price: PriceDto.fromEntity(entity.price),
      tripId: entity.tripId,
      categoryId: entity.categoryId,
      category: entity.category != null ? ExpenseCategoryDto.fromEntity(entity.category!) : null,
    );
  }
}
