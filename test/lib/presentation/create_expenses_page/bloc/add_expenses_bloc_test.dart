import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_tally/domain/utils/failure.dart';
import 'package:trip_tally/domain/utils/success.dart';
import 'package:trip_tally/presentation/pages/create_expenses_page/bloc/create_expenses_bloc.dart';
import 'package:trip_tally/presentation/pages/create_expenses_page/bloc/create_expenses_event.dart';
import 'package:trip_tally/presentation/pages/create_expenses_page/bloc/create_expenses_state.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';

import '../../../../generate_mocks.mocks.dart';

void main() {
  late MockAddExpenseUseCase mockAddExpenseUseCase;

  setUp(() {
    mockAddExpenseUseCase = MockAddExpenseUseCase();
  });

  CreateExpensesBloc addExpensesBloc() => CreateExpensesBloc(mockAddExpenseUseCase);

  group('AddExpensesBloc', () {
    blocTest<CreateExpensesBloc, CreateExpensesState>(
      'emits [AddExpensesState.success()] when AddExpenseEvent is successful',
      setUp: () => when(mockAddExpenseUseCase(any)).thenAnswer((_) async => const Right(Success())),
      build: addExpensesBloc,
      act: (bloc) => bloc.add(
        const CreateExpenseEvent(
          name: 'Flight tickets',
          date: '2024-01-01',
          amount: 1000.5,
          currency: 'USD',
          tripId: '9690386d-e0b5-46e5-98a1-a9cf5fb53f70',
        ),
      ),
      expect: () => [
        const CreateExpensesState.success(),
      ],
    );

    blocTest<CreateExpensesBloc, CreateExpensesState>(
      'emits [AddExpensesState.failure] when AddExpenseEvent fails',
      setUp: () => when(mockAddExpenseUseCase(any)).thenAnswer(
        (_) async => const Left(Failure(error: Errors.somethingWentWrong)),
      ),
      build: addExpensesBloc,
      act: (bloc) => bloc.add(
        const CreateExpenseEvent(
          name: 'Flight tickets',
          date: '2024-01-01',
          amount: 1000.5,
          currency: 'USD',
          tripId: '9690386d-e0b5-46e5-98a1-a9cf5fb53f70',
        ),
      ),
      expect: () => [
        const CreateExpensesState.failure(Errors.somethingWentWrong),
      ],
    );
  });
}
