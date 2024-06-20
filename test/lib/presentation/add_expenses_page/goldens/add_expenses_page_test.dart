import 'package:trip_tally/presentation/pages/add_expenses_page/add_expenses_page.dart';

import '../../../../golden_test_runner.dart';

void main() {
  runGoldenTest(
    'AddExpensesPage initial',
    builder: () {
      return const AddExpensesPage();
    },
  );
}
