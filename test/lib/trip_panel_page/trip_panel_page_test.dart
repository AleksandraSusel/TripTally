import 'package:trip_tally/presentation/pages/trip_panel_page/trip_panel_page.dart';

import '../../golden_test_runner.dart';

void main() {
  runGoldenTest(
    'TripPanelPage - Initial',
    builder: () {
      return const TripPanelPage();
    },
  );
}
