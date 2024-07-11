import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_tally/domain/utils/failure.dart';
import 'package:trip_tally/domain/utils/success.dart';
import 'package:trip_tally/presentation/pages/add_expenses_page/bloc/add_expenses_bloc.dart';
import 'package:trip_tally/presentation/pages/add_expenses_page/bloc/add_expenses_event.dart';
import 'package:trip_tally/presentation/pages/add_expenses_page/bloc/add_expenses_state.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';

import '../../../../mocks.mocks.dart';

void main() {
  late MockAddExpenseUseCase mockAddExpenseUseCase;

  setUp(() {
    mockAddExpenseUseCase = MockAddExpenseUseCase();
  });

  AddExpensesBloc addExpensesBloc() => AddExpensesBloc(mockAddExpenseUseCase);

  group('AddExpensesBloc', () {
    blocTest<AddExpensesBloc, AddExpensesState>(
      'emits [AddExpensesState.success()] when AddExpenseEvent is successful',
      setUp: () => when(mockAddExpenseUseCase(any)).thenAnswer((_) async => const Right(Success())),
      build: addExpensesBloc,
      act: (bloc) => bloc.add(
        const AddExpenseEvent(
          name: 'Flight tickets',
          date: '2024-01-01',
          amount: 1000.5,
          currency: 'USD',
          tripId: '9690386d-e0b5-46e5-98a1-a9cf5fb53f70',
          userId: '9ce6c7bf-c848-4633-9154-875223b345a1',
        ),
      ),
      expect: () => [
        const AddExpensesState.success(),
      ],
    );

    blocTest<AddExpensesBloc, AddExpensesState>(
      'emits [AddExpensesState.failure] when AddExpenseEvent fails',
      setUp: () => when(mockAddExpenseUseCase(any)).thenAnswer(
        (_) async => const Left(Failure(error: Errors.somethingWentWrong)),
      ),
      build: addExpensesBloc,
      act: (bloc) => bloc.add(
        const AddExpenseEvent(
          name: 'Flight tickets',
          date: '2024-01-01',
          amount: 1000.5,
          currency: 'USD',
          tripId: '9690386d-e0b5-46e5-98a1-a9cf5fb53f70',
          userId: '9ce6c7bf-c848-4633-9154-875223b345a1',
        ),
      ),
      expect: () => [
        const AddExpensesState.failure(Errors.somethingWentWrong),
      ],
    );
  });
}
