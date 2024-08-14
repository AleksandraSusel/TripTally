import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_tally/presentation/pages/create_trip_page/create_trip_basic_info_page.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/buttons/proceed_floating_action_button.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/maps/osm_bloc/osm_suggestions_cubit.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/text_fields/currency_text_field.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/text_fields/location_search_text_field.dart';

import '../../../golden_test_runner.dart';
import '../../../keyboard_visibility_handler.dart';
import '../../../mocked_data.dart';
import '../../../mocks.mocks.dart';

void main() {
  late MockOsmSuggestionsCubit mockOsmSuggestionsCubit;

  setUp(() {
    mockOsmSuggestionsCubit = MockOsmSuggestionsCubit();
    when(mockOsmSuggestionsCubit.state).thenAnswer((_) => const OsmSuggestionsState.loading());
    when(mockOsmSuggestionsCubit.stream).thenAnswer((_) => Stream.value(const OsmSuggestionsState.loading()));
    when(mockOsmSuggestionsCubit.close()).thenAnswer((_) async {});
    setupMockKeyboardVisibilityHandler();
  });

  tearDown(tearDownMockKeyboardVisibilityHandler);

  CreateTripBasicInfoPage buildPage() => CreateTripBasicInfoPage(cubit: mockOsmSuggestionsCubit);

  runGoldenTest(
    'CreateTripBasicInfoPage - Initial Destination',
    whilePerforming: (tester) async {
      await tester.enterText(find.byType(LocationSearchTextField), 'Warszawa');
      await tester.pumpAndSettle();
      return;
    },
    builder: () {
      when(mockOsmSuggestionsCubit.getSuggestions('Warszawa')).thenAnswer((_) async => [mockedPlaceEntityV1]);
      return buildPage();
    },
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
