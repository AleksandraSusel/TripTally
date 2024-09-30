import 'package:injectable/injectable.dart';
import 'package:trip_tally/data/api/api_client.dart';
import 'package:trip_tally/data/dto/expenses/create_expenses_dto.dart';
import 'package:trip_tally/data/dto/expenses/expense_categories_dto.dart';
import 'package:trip_tally/data/dto/expenses/expense_dto.dart';
import 'package:trip_tally/domain/data_source/expenses_remote_source.dart';
import 'package:trip_tally/domain/utils/exception.dart';
import 'package:trip_tally/domain/utils/success.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';

@Injectable(as: ExpensesRemoteSource)
class ExpensesRemoteSourceImpl implements ExpensesRemoteSource {
  ExpensesRemoteSourceImpl(this._client);

  final ApiClient _client;

  @override
  Future<Success> createExpenses(List<ExpenseDto> expenses) async {
    try {
      await _client.createExpenses(CreateExpensesDto(expenses: expenses));
      return const Success();
    } catch (e) {
      throw ApiException(Errors.somethingWentWrong);
    }
  }

  @override
  Future<ExpenseCategoriesDto> getExpenseCategories() async {
    try {
      return await _client.getExpensesCategories();
    } catch (e) {
      throw ApiException(Errors.somethingWentWrong);
    }
  }
}
