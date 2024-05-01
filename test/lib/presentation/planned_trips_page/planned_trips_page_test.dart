import 'package:trip_tally/presentation/pages/planned_trips_page/planned_trips_page.dart';

import '../../../golden_test_runner.dart';

void main() {
  runGoldenTest('PlannedTripsPage initial', builder: () {
    return const PlannedTripsPage();
  });
}
