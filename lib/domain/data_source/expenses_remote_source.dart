import 'package:trip_tally/data/dto/expenses/expense_categories_dto.dart';
import 'package:trip_tally/data/dto/expenses/expense_dto.dart';
import 'package:trip_tally/domain/utils/success.dart';

abstract class ExpensesRemoteSource {
  Future<Success> createExpenses(List<ExpenseDto> dto);

  Future<ExpenseCategoriesDto> getExpenseCategories();
}
