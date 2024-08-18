import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_tally/data/data_source/expenses_remote_source_impl.dart';
import 'package:trip_tally/data/dto/expenses/expense_dto.dart';
import 'package:trip_tally/domain/data_source/expenses_remote_source.dart';
import 'package:trip_tally/domain/utils/exception.dart';
import 'package:trip_tally/domain/utils/success.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';

import '../../generate_mocks.mocks.dart';
import '../../mocked_data.dart';

void main() {
  late MockApiClient mockApiClient;
  late ExpensesRemoteSource expensesRemoteSource;

  setUp(() {
    mockApiClient = MockApiClient();
    expensesRemoteSource = ExpensesRemoteSourceImpl(mockApiClient);
  });

  test('Add expense success', () async {
    final dto = ExpenseDto(
      name: mockedExpenseDto.name,
      date: mockedExpenseDto.date,
      amount: mockedExpenseDto.amount,
      currency: mockedExpenseDto.currency,
      tripId: mockedExpenseDto.tripId,
    );
    when(mockApiClient.addExpense(dto)).thenAnswer((_) async => const Success());
    final result = await expensesRemoteSource.createExpense(dto);
    expect(result, const Success());
    verify(mockApiClient.addExpense(dto));
    verifyNoMoreInteractions(mockApiClient);
  });

  test('Add expense throws ApiException on catch', () async {
    final dto = ExpenseDto(
      name: mockedExpenseDto.name,
      date: mockedExpenseDto.date,
      amount: mockedExpenseDto.amount,
      currency: mockedExpenseDto.currency,
      tripId: mockedExpenseDto.tripId,
    );
    when(mockApiClient.addExpense(any)).thenThrow(Exception());
    await expectLater(
      expensesRemoteSource.createExpense(dto),
      throwsA(isA<ApiException>().having((e) => e.failure, 'Something went wrong', Errors.somethingWentWrong)),
    );
    verify(mockApiClient.addExpense(dto));
    verifyNoMoreInteractions(mockApiClient);
  });
}
