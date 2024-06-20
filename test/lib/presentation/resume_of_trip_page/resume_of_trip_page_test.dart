import 'package:trip_tally/presentation/pages/resume_of_trip_page/resume_of_trip_page.dart';

import '../../../golden_test_runner.dart';

void main() {
  runGoldenTest(
    'ResumeOfTripPage initial',
    builder: () {
      return const ResumeOfTripPage();
    },
  );
}
