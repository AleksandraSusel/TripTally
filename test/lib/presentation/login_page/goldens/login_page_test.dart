import 'package:flutter_test/flutter_test.dart';
import 'package:trip_tally/presentation/pages/login_page/login_page.dart';

import '../../../../golden_test_runner.dart';

void main() {
  setUp(() {});

  runGoldenTest(
    'LoginPage-Initial',
    builder: () => const LoginPage(),
  );
}
