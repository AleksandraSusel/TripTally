import 'package:flutter_test/flutter_test.dart';
import 'package:trip_tally/presentation/pages/home_page/home_page.dart';

import '../../../../golden_test_runner.dart';

void main() {
  setUp(() {});

  runGoldenTest(
    'LoginPage-initial',
    builder: () {
      return const HomePage();
    },
  );
}
