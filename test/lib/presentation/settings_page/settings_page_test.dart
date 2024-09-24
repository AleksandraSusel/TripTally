import 'package:flutter_test/flutter_test.dart';
import 'package:trip_tally/presentation/pages/settings_page/settings_page.dart';
import 'package:trip_tally/presentation/widgets/keys/widgets_keys.dart';

import '../../../golden_test_runner.dart';

void main() {
  runGoldenTest(
    'SettingsPage - Initial',
    builder: () {
      return const SettingsPage();
    },
  );

  runGoldenTest(
    'SettingsPage - Delete dialog',
    whilePerforming: (tester) async {
      await tester.tap(find.byKey(WidgetsKeys.elevatedTripCardDeleteButton).first);
      await tester.pumpAndSettle();
      return;
    },
    builder: () {
      return const SettingsPage();
    },
  );
}
