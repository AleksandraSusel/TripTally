import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_tally/presentation/pages/planned_trips_page/planned_trips_page.dart';
import 'package:trip_tally/presentation/utils/basic_state.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';
import 'package:trip_tally/presentation/widgets/keys/widgets_keys.dart';

import '../../../generate_mocks.mocks.dart';
import '../../../golden_test_runner.dart';
import '../../../mocked_data.dart';

void main() {
  late MockGetAllUserTripsBloc mockGetAllUserTripsBloc;
  late MockDeleteTripBloc mockDeleteTripBloc;
  setUp(() {
    mockGetAllUserTripsBloc = MockGetAllUserTripsBloc();
    mockDeleteTripBloc = MockDeleteTripBloc();
    when(mockGetAllUserTripsBloc.state).thenAnswer((_) => LoadedState(data: mockedTripEntityList));
    when(mockGetAllUserTripsBloc.stream).thenAnswer((_) => Stream.value(LoadedState(data: mockedTripEntityList)));
    when(mockGetAllUserTripsBloc.close()).thenAnswer((_) async {});

    when(mockDeleteTripBloc.state).thenAnswer((_) => const LoadedState(data: null));
    when(mockDeleteTripBloc.stream).thenAnswer((_) => Stream.value(const LoadedState(data: null)));
    when(mockDeleteTripBloc.close()).thenAnswer((_) async {});
  });

  PlannedTripsPage buildPage() => PlannedTripsPage(
        getAllUserTripsBloc: mockGetAllUserTripsBloc,
        deleteTripBloc: mockDeleteTripBloc,
      );

  runGoldenTest(
    'PlannedTripsM3Page - Initial',
    builder: buildPage,
  );

  runGoldenTest(
    'PlannedTripsM3Page - Error',
    builder: () {
      when(mockGetAllUserTripsBloc.state).thenAnswer((_) => const FailureState(Errors.somethingWentWrong));
      when(mockGetAllUserTripsBloc.stream)
          .thenAnswer((_) => Stream.value(const FailureState(Errors.somethingWentWrong)));

      return buildPage();
    },
  );

  runGoldenTest(
    'PlannedTripsM3Page - Delete dialog',
    whilePerforming: (tester) async {
      await tester.tap(find.byKey(WidgetsKeys.elevatedTripCardDeleteButton).first);
      await tester.pumpAndSettle();
      return;
    },
    builder: buildPage,
  );
}
