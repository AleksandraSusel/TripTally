import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trip_tally/data/dto/expenses/expense_dto.dart';

part 'create_expenses_dto.freezed.dart';
part 'create_expenses_dto.g.dart';

@freezed
abstract class CreateExpensesDto with _$CreateExpensesDto {
  const factory CreateExpensesDto({
    required List<ExpenseDto> expenses,
  }) = _CreateExpensesDto;

  factory CreateExpensesDto.fromJson(Map<String, dynamic> json) => _$CreateExpensesDtoFromJson(json);
}
