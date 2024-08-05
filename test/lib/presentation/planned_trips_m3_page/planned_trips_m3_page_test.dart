import 'package:trip_tally/presentation/pages/planned_trips_m3_page/planned_trips_m3_page.dart';

import '../../../golden_test_runner.dart';

void main() {
  runGoldenTest(
    'PlannedTripsM3Page initial',
    builder: () {
      return const PlannedTripsM3Page();
    },
  );
}
