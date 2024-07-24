import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_tally/data/repositories/expenses_repo_impl.dart';
import 'package:trip_tally/domain/repositories/expenses_repo.dart';
import 'package:trip_tally/domain/utils/exception.dart';
import 'package:trip_tally/domain/utils/success.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';

import '../../mocked_data.dart';
import '../../mocks.mocks.dart';

void main() {
  late MockExpensesRemoteSource mockExpensesRemoteSource;
  late ExpensesRepo repo;

  setUpAll(() {
    mockExpensesRemoteSource = MockExpensesRemoteSource();
    repo = ExpensesRepoImpl(mockExpensesRemoteSource);
  });

  test('AddExpense adds an expense success', () async {
    when(mockExpensesRemoteSource.createExpense(mockedExpenseDto)).thenAnswer((_) async => const Success());
    final result = await repo.addExpense(mockedExpenseEntity);
    Success? success;
    result.fold((l) => null, (r) => success = r);
    expect(success, const Success());
    verify(mockExpensesRemoteSource.createExpense(mockedExpenseDto));
    verifyNoMoreInteractions(mockExpensesRemoteSource);
  });

  test('AddExpense adds an expense failure', () async {
    when(mockExpensesRemoteSource.createExpense(any)).thenThrow(ApiException(Errors.somethingWentWrong));
    final result = await repo.addExpense(mockedExpenseEntity);
    Errors? error;
    result.fold((l) => error = l.error, (r) => null);
    expect(error, Errors.somethingWentWrong);
    verify(mockExpensesRemoteSource.createExpense(mockedExpenseDto));
    verifyNoMoreInteractions(mockExpensesRemoteSource);
  });
}
