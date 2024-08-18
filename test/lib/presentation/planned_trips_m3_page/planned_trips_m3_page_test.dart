import 'package:flutter_test/flutter_test.dart';
import 'package:trip_tally/presentation/pages/planned_trips_m3_page/planned_trips_m3_page.dart';
import 'package:trip_tally/presentation/widgets/keys/widgets_keys.dart';

import '../../../golden_test_runner.dart';

void main() {
  runGoldenTest(
    'PlannedTripsM3Page - Initial',
    builder: () {
      return const PlannedTripsM3Page();
    },
  );

  runGoldenTest(
    'PlannedTripsM3Page - Delete dialog',
    whilePerforming: (tester) async {
      await tester.tap(find.byKey(WidgetsKeys.elevatedTripCardDeleteButton).first);
      await tester.pumpAndSettle();
      return;
    },
    builder: () {
      return const PlannedTripsM3Page();
    },
  );
}
