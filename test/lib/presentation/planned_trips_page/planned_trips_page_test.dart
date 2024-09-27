import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_tally/presentation/pages/planned_trips_page/bloc/get_all_user_trips_bloc.dart';
import 'package:trip_tally/presentation/pages/planned_trips_page/planned_trips_page.dart';
import 'package:trip_tally/presentation/widgets/keys/widgets_keys.dart';

import '../../../generate_mocks.mocks.dart';
import '../../../golden_test_runner.dart';
import '../../../helpers.dart';
import '../../../mocked_data.dart';

void main() {
  late MockGetAllUserTripsBloc mockGetAllUserTripsBloc;
  setUp(() {
    mockGetAllUserTripsBloc = MockGetAllUserTripsBloc();
    when(mockGetAllUserTripsBloc.state).thenAnswer((_) => GetAllUserTripsState.loaded(mockedTripEntityList));
    when(mockGetAllUserTripsBloc.stream)
        .thenAnswer((_) => Stream.value(GetAllUserTripsState.loaded(mockedTripEntityList)));
    when(mockGetAllUserTripsBloc.close()).thenAnswer((_) async {});

    initializeMockEnvironmentWithBloc<GetAllUserTripsBloc>(mockGetAllUserTripsBloc);
  });
  runGoldenTest(
    'PlannedTripsM3Page - Initial',
    builder: () {
      return const PlannedTripsPage();
    },
  );

  runGoldenTest(
    'PlannedTripsM3Page - Delete dialog',
    whilePerforming: (tester) async {
      await tester.tap(find.byKey(WidgetsKeys.elevatedTripCardDeleteButton).first);
      await tester.pumpAndSettle();
      return;
    },
    builder: () {
      return const PlannedTripsPage();
    },
  );
}
