import 'package:trip_tally/presentation/pages/new_trip_page/new_trip_page.dart';

import '../../../golden_test_runner.dart';

void main() {
  runGoldenTest('NewTripPage initial', builder: () {
    return const NewTripPage();
  });
}
