import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_tally/data/data_source/expenses_remote_source_impl.dart';
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
    when(mockApiClient.createExpenses(any)).thenAnswer((_) async => const Success());
    final result = await expensesRemoteSource.createExpenses(mockedCreateExpensesDto.expenses);
    expect(result, const Success());
    verify(mockApiClient.createExpenses(mockedCreateExpensesDto));
    verifyNoMoreInteractions(mockApiClient);
  });

  test('Add expense throws ApiException on catch', () async {
    when(mockApiClient.createExpenses(any)).thenThrow(Exception());
    await expectLater(
      expensesRemoteSource.createExpenses(mockedCreateExpensesDto.expenses),
      throwsA(isA<ApiException>().having((e) => e.failure, 'Something went wrong', Errors.somethingWentWrong)),
    );
    verify(mockApiClient.createExpenses(mockedCreateExpensesDto));
    verifyNoMoreInteractions(mockApiClient);
  });
}
