import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trip_tally/data/dto/expenses/expense_category_dto.dart';

part 'expense_categories_dto.freezed.dart';

part 'expense_categories_dto.g.dart';

@freezed
class ExpenseCategoriesDto with _$ExpenseCategoriesDto {
  const factory ExpenseCategoriesDto({
    required List<ExpenseCategoryDto> categories,
  }) = _ExpenseCategoriesDto;

  factory ExpenseCategoriesDto.fromJson(Map<String, dynamic> json) => _$ExpenseCategoriesDtoFromJson(json);
}
