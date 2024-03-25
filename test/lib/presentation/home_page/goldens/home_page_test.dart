import 'package:trip_tally/presentation/pages/home_page/home_page.dart';

import '../../../../golden_test_runner.dart';

void main() {
  runGoldenTest(
    'HomePage-initial',
    builder: () {
      return const HomePage();
    },
  );
}
