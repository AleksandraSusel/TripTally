import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trip_tally/domain/entities/expenses/expense_entity.dart';

part 'expense_dto.freezed.dart';

part 'expense_dto.g.dart';

@freezed
class ExpenseDto with _$ExpenseDto {
  const factory ExpenseDto({
    required String name,
    required String date,
    required double amount,
    required String currency,
    required String tripId,
    required String userId,
  }) = _ExpenseDto;

  factory ExpenseDto.fromJson(Map<String, dynamic> json) => _$ExpenseDtoFromJson(json);

  factory ExpenseDto.fromEntity(ExpenseEntity entity, String userId) {
    return ExpenseDto(
      name: entity.name,
      date: entity.date,
      amount: entity.amount,
      currency: entity.currency,
      tripId: entity.tripId,
      userId: userId,
    );
  }
}
