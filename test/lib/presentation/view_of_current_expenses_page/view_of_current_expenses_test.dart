import 'package:trip_tally/presentation/pages/view_of_current_expenses_page/view_of_current_expenses_page.dart';

import '../../../golden_test_runner.dart';

void main() {
  runGoldenTest(
    'ViewOfCurrentExpensesPage -initial',
    builder: () {
      return const ViewOfCurrentExpensesPage();
    },
  );
}
