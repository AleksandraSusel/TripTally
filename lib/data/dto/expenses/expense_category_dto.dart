import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trip_tally/domain/entities/expenses/expense_category_entity.dart';

part 'expense_category_dto.freezed.dart';
part 'expense_category_dto.g.dart';

@freezed
abstract class ExpenseCategoryDto with _$ExpenseCategoryDto {
  const factory ExpenseCategoryDto({
    required String id,
    required String name,
    required String translationKey,
  }) = _ExpenseCategoryDto;

  factory ExpenseCategoryDto.fromJson(Map<String, dynamic> json) => _$ExpenseCategoryDtoFromJson(json);

  factory ExpenseCategoryDto.fromEntity(ExpenseCategoryEntity entity) {
    return ExpenseCategoryDto(
      id: entity.id,
      name: entity.name,
      translationKey: entity.translationKey,
    );
  }
}
