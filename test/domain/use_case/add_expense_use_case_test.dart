import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_tally/domain/use_case/create_expense_use_case.dart';
import 'package:trip_tally/domain/utils/failure.dart';
import 'package:trip_tally/domain/utils/success.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';

import '../../generate_mocks.mocks.dart';
import '../../mocked_data.dart';

void main() {
  late MockExpensesRepo mockExpensesRepo;
  late CreateExpenseUseCase addExpenseUseCase;

  setUp(() {
    mockExpensesRepo = MockExpensesRepo();
    addExpenseUseCase = CreateExpenseUseCase(mockExpensesRepo);
  });

  test('AddExpense adds en expense success', () async {
    when(mockExpensesRepo.createExpense(mockedExpenseEntity)).thenAnswer((_) async => const Right(Success()));
    final result = await addExpenseUseCase.call(mockedExpenseEntity);
    Success? success;
    result.fold((l) => null, (r) => success = r);
    expect(success, const Success());
    verify(mockExpensesRepo.createExpense(mockedExpenseEntity));
    verifyNoMoreInteractions(mockExpensesRepo);
  });

  test('AddTrip to add a trip failure', () async {
    when(mockExpensesRepo.createExpense(mockedExpenseEntity)).thenAnswer(
      (_) async => const Left(Failure(error: Errors.somethingWentWrong)),
    );
    final result = await addExpenseUseCase.call(mockedExpenseEntity);
    Errors? error;
    result.fold((l) => error = l.error, (r) => null);
    expect(error, Errors.somethingWentWrong);
    verify(mockExpensesRepo.createExpense(mockedExpenseEntity));
    verifyNoMoreInteractions(mockExpensesRepo);
  });
}
