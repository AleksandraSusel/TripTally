import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_tally/domain/utils/failure.dart';
import 'package:trip_tally/domain/utils/success.dart';
import 'package:trip_tally/presentation/pages/create_expenses_page/bloc/create_expenses_bloc.dart';
import 'package:trip_tally/presentation/pages/create_expenses_page/bloc/create_expenses_event.dart';
import 'package:trip_tally/presentation/utils/basic_state.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';

import '../../../../generate_mocks.mocks.dart';
import '../../../../mocked_data.dart';

void main() {
  late MockCreateExpensesUseCase mockCreateExpensesUseCase;

  setUp(() {
    mockCreateExpensesUseCase = MockCreateExpensesUseCase();
  });

  CreateExpensesBloc addExpensesBloc() => CreateExpensesBloc(mockCreateExpensesUseCase);

  group('AddExpensesBloc', () {
    blocTest<CreateExpensesBloc, BasicState<void>>(
      'emits [SuccessState] when CreateExpenseEvent is successful',
      setUp: () => when(mockCreateExpensesUseCase(any)).thenAnswer((_) async => const Right(Success())),
      build: addExpensesBloc,
      act: (bloc) => bloc.add(
        const CreateExpenseEvent(
          expenses: [mockedExpenseEntity, mockedExpenseEntity],
        ),
      ),
      expect: () => [
        const LoadingState<void>(),
        const SuccessState<void>(),
      ],
    );

    blocTest<CreateExpensesBloc, BasicState<void>>(
      'emits [FailureState] when CreateExpenseEvent fails',
      setUp: () => when(mockCreateExpensesUseCase(any)).thenAnswer(
        (_) async => const Left(Failure(error: Errors.somethingWentWrong)),
      ),
      build: addExpensesBloc,
      act: (bloc) => bloc.add(
        const CreateExpenseEvent(
          expenses: [mockedExpenseEntity, mockedExpenseEntity],
        ),
      ),
      expect: () => [
        const LoadingState<void>(),
        const FailureState<void>(Errors.somethingWentWrong),
      ],
    );
  });
}
