import 'package:trip_tally/presentation/pages/your_trip_page/your_trip_page.dart';

import '../../../golden_test_runner.dart';

void main() {
  runGoldenTest(
    'YourCurrentTripPage initial',
    builder: () {
      return const YourCurrentTripPage();
    },
  );
}
