import 'package:dartz/dartz.dart';
import 'package:trip_tally/domain/entities/expenses/expense_categories_entity.dart';
import 'package:trip_tally/domain/entities/expenses/expense_entity.dart';
import 'package:trip_tally/domain/utils/failure.dart';
import 'package:trip_tally/domain/utils/success.dart';

abstract class ExpensesRepo {
  Future<Either<Failure, Success>> createExpenses(List<ExpenseEntity> entities);

  Future<Either<Failure, ExpenseCategoriesEntity>> getExpenseCategories();
}
