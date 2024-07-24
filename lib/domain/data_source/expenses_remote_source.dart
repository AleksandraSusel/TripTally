import 'package:trip_tally/data/dto/expenses/expense_dto.dart';
import 'package:trip_tally/domain/utils/success.dart';

abstract class ExpensesRemoteSource {
  Future<Success> createExpense(ExpenseDto dto);
}
