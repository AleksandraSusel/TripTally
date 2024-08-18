import 'package:trip_tally/presentation/pages/edit_current_trip_page/edit_current_trip_page.dart';

import '../../../golden_test_runner.dart';

void main() {
  runGoldenTest(
    'EditCurrentTripPage initial',
    builder: () {
      return const EditCurrentTripPage();
    },
  );
}
