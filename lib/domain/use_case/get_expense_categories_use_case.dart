import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_tally/domain/entities/expenses/expense_categories_entity.dart';
import 'package:trip_tally/domain/repositories/expenses_repo.dart';
import 'package:trip_tally/domain/utils/failure.dart';
import 'package:trip_tally/domain/utils/use_case.dart';

@injectable
class GetExpenseCategoriesUseCase implements NoParamsUseCaseWithFailure<ExpenseCategoriesEntity> {
  const GetExpenseCategoriesUseCase(this._repo);

  final ExpensesRepo _repo;

  @override
  Future<Either<Failure, ExpenseCategoriesEntity>> call() async {
    return (await _repo.getExpenseCategories()).fold(
      Left.new,
      Right.new,
    );
  }
}
