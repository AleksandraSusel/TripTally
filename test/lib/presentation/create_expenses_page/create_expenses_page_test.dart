import 'package:flutter_test/flutter_test.dart';
import 'package:trip_tally/presentation/pages/create_expenses_page/create_expenses_page.dart';
import 'package:trip_tally/presentation/widgets/keys/widgets_keys.dart';

import '../../../golden_test_runner.dart';

void main() {
  setUp(() {});

  CreateExpensesPage buildPage() => const CreateExpensesPage();

  runGoldenTest(
    'CreateExpensesPage - Initial',
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
