import 'package:dartz/dartz.dart';
import 'package:trip_tally/domain/entities/expenses/expense_entity.dart';
import 'package:trip_tally/domain/utils/failure.dart';
import 'package:trip_tally/domain/utils/success.dart';

abstract class ExpensesRepo {
  Future<Either<Failure, Success>> addExpense(ExpenseEntity entity);
}
