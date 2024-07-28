import 'package:flutter_test/flutter_test.dart';
import 'package:trip_tally/presentation/pages/create_trip_page/create_trip_basic_info_page.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/buttons/proceed_floating_action_button.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/text_fields/currency_text_field.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/text_fields/location_search_text_field.dart';

import '../../../golden_test_runner.dart';
import '../../../keyboard_visibility_handler.dart';

void main() {
  setUp(setupMockKeyboardVisibilityHandler);

  tearDown(tearDownMockKeyboardVisibilityHandler);

  CreateTripBasicInfoPage buildPage() => const CreateTripBasicInfoPage();

  runGoldenTest(
    'CreateTripBasicInfoPage - Initial Destination',
    whilePerforming: (tester) async {
      await tester.enterText(find.byType(LocationSearchTextField), 'Warszawa');
      await tester.pumpAndSettle();
      return;
    },
    builder: buildPage,
  );

  runGoldenTest(
    'CreateTripBasicInfoPage - Validators',
    whilePerforming: (tester) async {
      await tester.tap(find.byType(ProceedFloatingActionButton));
      await tester.pumpAndSettle();
      return;
    },
    builder: buildPage,
  );

  runGoldenTest(
    'CreateTripBasicInfoPage - Currency sheet',
    whilePerforming: (tester) async {
      await tester.tap(find.byType(CurrencyTextField));
      await tester.pumpAndSettle();
      return;
    },
    builder: buildPage,
  );

  runGoldenTest(
    'CreateTripBasicInfoPage - Calendar picker',
    whilePerforming: (tester) async {
      await tester.tap(find.text('1').first);
      await tester.tap(find.text('10').first);
      await tester.pumpAndSettle();
      return;
    },
    builder: buildPage,
  );
}
