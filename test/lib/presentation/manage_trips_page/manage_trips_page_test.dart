import 'package:trip_tally/presentation/pages/manage_your_trips_page/manage_your_trips_page.dart';

import '../../../golden_test_runner.dart';

void main() {
  runGoldenTest(
    'ManageTripsPage-InitialNoTrip',
    builder: () {
      return const ManageYourTripsPage();
    },
  );

  runGoldenTest(
    'ManageTripsPage-InitialWithTrip',
    builder: () {
      return const ManageYourTripsPage(isOnTrip: true);
    },
  );
}
