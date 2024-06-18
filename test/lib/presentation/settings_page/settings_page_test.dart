import 'package:trip_tally/presentation/pages/settings_page/settings_page.dart';

import '../../../golden_test_runner.dart';

void main() {
  runGoldenTest(
    'HomePage-initial',
    builder: () {
      return const SettingsPage();
    },
  );
}
