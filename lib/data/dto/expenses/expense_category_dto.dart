import 'package:freezed_annotation/freezed_annotation.dart';

part 'expense_category_dto.freezed.dart';

part 'expense_category_dto.g.dart';

@freezed
class ExpenseCategoryDto with _$ExpenseCategoryDto {
  const factory ExpenseCategoryDto({
    required String id,
    required String name,
    required String translationKey,
  }) = _ExpenseCategoryDto;

  factory ExpenseCategoryDto.fromJson(Map<String, dynamic> json) => _$ExpenseCategoryDtoFromJson(json);
}
