import 'package:injectable/injectable.dart';
import 'package:trip_tally/data/api/api_client.dart';
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
  Future<Success> createExpense(ExpenseDto dto) async {
    try {
      await _client.addExpense(dto);
      return const Success();
    } catch (e) {
      throw ApiException(Errors.somethingWentWrong);
    }
  }
}
