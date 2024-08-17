import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trip_tally/data/dto/expenses/expense_dto.dart';

part 'expense_entity.freezed.dart';

@freezed
class ExpenseEntity with _$ExpenseEntity {
  const factory ExpenseEntity({
    required String name,
    required String date,
    required double amount,
    required String currency,
    required String tripId,
  }) = _ExpenseEntity;

  factory ExpenseEntity.fromDto(ExpenseDto dto) {
    return ExpenseEntity(
      name: dto.name,
      date: dto.date,
      amount: dto.amount,
      currency: dto.currency,
      tripId: dto.tripId,
    );
  }
}
