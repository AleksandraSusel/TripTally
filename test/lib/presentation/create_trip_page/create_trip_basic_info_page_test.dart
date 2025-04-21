import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_tally/domain/entities/osm_map/place_entity.dart';
import 'package:trip_tally/domain/entities/trips/trip_entity.dart';
import 'package:trip_tally/presentation/pages/create_trip_page/create_trip_basic_info_page.dart';
import 'package:trip_tally/presentation/utils/basic_state.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/buttons/proceed_floating_action_button.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/text_fields/currency_text_field.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/text_fields/location_search_text_field.dart';

import '../../../generate_mocks.mocks.dart';
import '../../../golden_test_runner.dart';
import '../../../keyboard_visibility_handler.dart';
import '../../../mocked_data.dart';

void main() {
  late MockOsmSuggestionsCubit mockOsmSuggestionsCubit;
  late MockCreateTripBloc mockCreateTripBloc;
  late MockUpdateTripBloc mockUpdateTripBloc;

  setUp(() {
    mockCreateTripBloc = MockCreateTripBloc();
    when(mockCreateTripBloc.state).thenAnswer((_) => const InitialState<TripEntity>());
    when(mockCreateTripBloc.stream).thenAnswer((_) => Stream.value(const InitialState<TripEntity>()));
    when(mockCreateTripBloc.close()).thenAnswer((_) async {});

    mockUpdateTripBloc = MockUpdateTripBloc();
    when(mockUpdateTripBloc.state).thenAnswer((_) => const LoadingState<void>());
    when(mockUpdateTripBloc.stream).thenAnswer((_) => Stream.value(const LoadingState<void>()));
    when(mockUpdateTripBloc.close()).thenAnswer((_) async {});

    mockOsmSuggestionsCubit = MockOsmSuggestionsCubit();
    when(mockOsmSuggestionsCubit.state).thenAnswer((_) => const LoadingState<List<PlaceEntity>>());
    when(mockOsmSuggestionsCubit.stream).thenAnswer((_) => Stream.value(const LoadingState<List<PlaceEntity>>()));
    when(mockOsmSuggestionsCubit.close()).thenAnswer((_) async {});
    setupMockKeyboardVisibilityHandler();
  });

  tearDown(tearDownMockKeyboardVisibilityHandler);

  CreateTripBasicInfoPage buildPage() => CreateTripBasicInfoPage(
        cubit: mockOsmSuggestionsCubit,
        createTripBloc: mockCreateTripBloc,
        updateTripBloc: mockUpdateTripBloc,
      );

  CreateTripBasicInfoPage buildUpdatePage() => CreateTripBasicInfoPage(
        cubit: mockOsmSuggestionsCubit,
        createTripBloc: mockCreateTripBloc,
        updateTripBloc: mockUpdateTripBloc,
        trip: mockedTripEntityV1,
      );

  runGoldenTest(
    'CreateTripBasicInfoPage - Initial Destination',
    whilePerforming: (tester) async {
      await tester.enterText(find.byType(LocationSearchTextField), 'Warszawa');
      await tester.pumpAndSettle();
      return;
    },
    builder: () {
      when(mockOsmSuggestionsCubit.getSuggestions('Warszawa')).thenAnswer(
        (_) async => [mockedPlaceEntityV1],
      );
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

  runGoldenTest(
    'CreateTripBasicInfoPage - Update',
    builder: buildUpdatePage,
  );
}
