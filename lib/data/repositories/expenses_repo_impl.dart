import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_tally/data/dto/expenses/expense_dto.dart';
import 'package:trip_tally/domain/data_source/expenses_remote_source.dart';
import 'package:trip_tally/domain/entities/expenses/expense_categories_entity.dart';
import 'package:trip_tally/domain/entities/expenses/expense_entity.dart';
import 'package:trip_tally/domain/repositories/expenses_repo.dart';
import 'package:trip_tally/domain/utils/exception.dart';
import 'package:trip_tally/domain/utils/failure.dart';
import 'package:trip_tally/domain/utils/success.dart';

@Injectable(as: ExpensesRepo)
class ExpensesRepoImpl implements ExpensesRepo {
  ExpensesRepoImpl(this._remoteSource);

  final ExpensesRemoteSource _remoteSource;

  @override
  Future<Either<Failure, Success>> createExpense(ExpenseEntity entity) async {
    try {
      final result = await _remoteSource.createExpense(ExpenseDto.fromEntity(entity));
      return Right(result);
    } on ApiException catch (e) {
      return Left(Failure(error: e.failure));
    }
  }

  @override
  Future<Either<Failure, ExpenseCategoriesEntity>> getExpenseCategories() async {
    try {
      final dto = await _remoteSource.getExpenseCategories();
      return Right(ExpenseCategoriesEntity.fromDto(dto));
    } on ApiException catch (e) {
      return Left(Failure(error: e.failure));
    }
  }
}
