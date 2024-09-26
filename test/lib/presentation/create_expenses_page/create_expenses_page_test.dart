import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_tally/presentation/pages/create_expenses_page/bloc/get_expense_categories_bloc.dart';
import 'package:trip_tally/presentation/pages/create_expenses_page/create_expenses_page.dart';
import 'package:trip_tally/presentation/widgets/keys/widgets_keys.dart';

import '../../../generate_mocks.mocks.dart';
import '../../../golden_test_runner.dart';
import '../../../helpers.dart';
import '../../../mocked_data.dart';

void main() {
  late GetExpenseCategoriesBloc mockGetExpenseCategoriesBloc;

  setUp(() {
    mockGetExpenseCategoriesBloc = MockGetExpenseCategoriesBloc();
    when(mockGetExpenseCategoriesBloc.state)
        .thenAnswer((_) => const GetExpenseCategoriesState.loaded(mockedExpenseCategoriesEntities));
    when(mockGetExpenseCategoriesBloc.stream)
        .thenAnswer((_) => Stream.value(const GetExpenseCategoriesState.loaded(mockedExpenseCategoriesEntities)));
    when(mockGetExpenseCategoriesBloc.close()).thenAnswer((_) async {});
    initializeMockEnvironmentWithBloc<GetExpenseCategoriesBloc>(mockGetExpenseCategoriesBloc);
  });

  CreateExpensesPage buildPage() => const CreateExpensesPage(
        tripId: 'some-id',
        currency: 'USD',
      );

  runGoldenTest(
    'CreateExpensesPage - Initial',
    builder: buildPage,
  );

  runGoldenTest(
    'CreateExpensesPage - Categories list',
    whilePerforming: (tester) async {
      await tester.pumpAndSettle();
      await tester.enterText(find.byKey(WidgetsKeys.addExpenseFormNameExpense), 'Hot-dog');
      await tester.enterText(find.byKey(WidgetsKeys.addExpenseFormBudgetExpense), '10');
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
      await tester.enterText(find.byKey(WidgetsKeys.addExpenseFormNameExpense), 'Hot-dog');
      await tester.enterText(find.byKey(WidgetsKeys.addExpenseFormBudgetExpense), '10');
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
