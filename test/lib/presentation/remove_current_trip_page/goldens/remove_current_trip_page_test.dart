import 'package:trip_tally/presentation/remove_current_trip_page/remove_current_trip_page.dart';

import '../../../../golden_test_runner.dart';

void main() {
  runGoldenTest(
    'RemoveCurrentTripPage initial',
    builder: () {
      return const RemoveCurrentTripPage();
    },
  );
}
