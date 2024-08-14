import 'package:trip_tally/presentation/pages/trips_history_page/trips_history_page.dart';

import '../../../golden_test_runner.dart';

void main() {
  runGoldenTest(
    'TripsHistoryPage-initial',
    builder: () {
      return const TripsHistoryPage();
    },
  );
}
