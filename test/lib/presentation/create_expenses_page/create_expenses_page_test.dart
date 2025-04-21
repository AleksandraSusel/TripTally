import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_tally/domain/entities/expenses/expense_categories_entity.dart';
import 'package:trip_tally/presentation/pages/create_expenses_page/bloc/create_expenses_bloc.dart';
import 'package:trip_tally/presentation/pages/create_expenses_page/bloc/get_expense_categories_bloc.dart';
import 'package:trip_tally/presentation/pages/create_expenses_page/create_expenses_page.dart';
import 'package:trip_tally/presentation/utils/basic_state.dart';
import 'package:trip_tally/presentation/widgets/keys/widgets_keys.dart';

import '../../../generate_mocks.mocks.dart';
import '../../../golden_test_runner.dart';
import '../../../helpers.dart';
import '../../../mocked_data.dart';

void main() {
  late GetExpenseCategoriesBloc mockGetExpenseCategoriesBloc;
  late CreateExpensesBloc mockCreateExpensesBloc;

  setUp(() {
    mockGetExpenseCategoriesBloc = MockGetExpenseCategoriesBloc();
    mockCreateExpensesBloc = MockCreateExpensesBloc();

    when(mockGetExpenseCategoriesBloc.state).thenAnswer(
      (_) => const LoadedState<ExpenseCategoriesEntity>(data: mockedExpenseCategoriesEntities),
    );
    when(mockGetExpenseCategoriesBloc.stream).thenAnswer(
      (_) => Stream.value(const LoadedState<ExpenseCategoriesEntity>(data: mockedExpenseCategoriesEntities)),
    );
    when(mockGetExpenseCategoriesBloc.close()).thenAnswer((_) async {});

    when(mockCreateExpensesBloc.state).thenAnswer((_) => const LoadedState<void>(data: null));
    when(mockCreateExpensesBloc.stream).thenAnswer((_) => Stream.value(const LoadedState<void>(data: null)));
    when(mockCreateExpensesBloc.close()).thenAnswer((_) async {});

    initializeMockEnvironmentWithBloc<GetExpenseCategoriesBloc>(
      mockGetExpenseCategoriesBloc,
    );
    initializeMockEnvironmentWithBloc<CreateExpensesBloc>(
      mockCreateExpensesBloc,
    );
  });

  CreateExpensesPage buildPage() => CreateExpensesPage(trip: mockedTripEntityV1);

  runGoldenTest(
    'CreateExpensesPage - Initial',
    builder: buildPage,
  );

  runGoldenTest(
    'CreateExpensesPage - Categories list',
    whilePerforming: (tester) async {
      await tester.pumpAndSettle();
      await tester.enterText(
        find.byKey(WidgetsKeys.addExpenseFormNameExpense),
        'Hot-dog',
      );
      await tester.enterText(
        find.byKey(WidgetsKeys.addExpenseFormBudgetExpense),
        '10',
      );
      await tester.tap(find.byKey(WidgetsKeys.addExpenseFormCategoryExpense));
      await tester.pumpAndSettle();
      return;
    },
    builder: buildPage,
  );

  runGoldenTest(
    'CreateExpensesPage - Add expense',
    whilePerforming: (tester) async {
      await tester.pumpAndSettle();
      await tester.enterText(
        find.byKey(WidgetsKeys.addExpenseFormNameExpense),
        'Hot-dog',
      );
      await tester.enterText(
        find.byKey(WidgetsKeys.addExpenseFormBudgetExpense),
        '10',
      );
      await tester.tap(find.byKey(WidgetsKeys.addExpenseFormCategoryExpense));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Food'));
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(WidgetsKeys.addExpenseFormAddExpenseButton));
      await tester.pumpAndSettle();
      return;
    },
    builder: buildPage,
  );
}
