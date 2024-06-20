import 'package:trip_tally/presentation/pages/plan_expenses_page/plan_expenses_page.dart';

import '../../../golden_test_runner.dart';

void main() {
  runGoldenTest(
    'PlanExpensesPage initial',
    builder: () {
      return const PlanExpensesPage();
    },
  );
}
