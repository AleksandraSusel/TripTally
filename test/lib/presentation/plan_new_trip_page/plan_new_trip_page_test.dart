import 'package:trip_tally/presentation/pages/plan_new_trip_page/plan_new_trip_page.dart';

import '../../../golden_test_runner.dart';

void main() {
  runGoldenTest('PlanNewTripPage initial', builder: () {
    return const PlanNewTripPage();
  });
}
