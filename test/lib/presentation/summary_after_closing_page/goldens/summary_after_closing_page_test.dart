import 'package:trip_tally/presentation/pages/summary_after_closing_page/summary_after_closing_page.dart';

import '../../../../golden_test_runner.dart';

void main() {
  runGoldenTest(
    'SummaryAfterClosingPage-initial',
    builder: () {
      return const SummaryAfterClosingPage();
    },
  );
}
