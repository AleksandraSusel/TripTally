import 'package:flutter_test/flutter_test.dart';
import 'package:trip_tally/presentation/pages/settings_page/settings_page.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/cards/elevated_selection_card.dart';

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
      await tester.tap(find.byType(ElevatedSelectionCard).first);
      await tester.pumpAndSettle();
      return;
    },
    builder: () {
      return const SettingsPage();
    },
  );
}
