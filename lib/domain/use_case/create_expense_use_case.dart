import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_tally/domain/entities/expenses/expense_entity.dart';
import 'package:trip_tally/domain/repositories/expenses_repo.dart';
import 'package:trip_tally/domain/utils/failure.dart';
import 'package:trip_tally/domain/utils/success.dart';
import 'package:trip_tally/domain/utils/use_case.dart';

@injectable
class CreateExpensesUseCase implements UseCase<Success, List<ExpenseEntity>> {
  const CreateExpensesUseCase(this._repo);

  final ExpensesRepo _repo;

  @override
  Future<Either<Failure, Success>> call(List<ExpenseEntity> entities) async {
    return (await _repo.createExpenses(entities)).fold(
      Left.new,
      Right.new,
    );
  }
}
