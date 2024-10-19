import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_tally/presentation/pages/planned_trips_page/bloc/delete_trip_bloc.dart';
import 'package:trip_tally/presentation/pages/planned_trips_page/bloc/get_all_user_trips_bloc.dart';
import 'package:trip_tally/presentation/pages/planned_trips_page/planned_trips_page.dart';
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
    when(mockGetAllUserTripsBloc.state).thenAnswer((_) => GetAllUserTripsState.loaded(mockedTripEntityList));
    when(mockGetAllUserTripsBloc.stream)
        .thenAnswer((_) => Stream.value(GetAllUserTripsState.loaded(mockedTripEntityList)));
    when(mockGetAllUserTripsBloc.close()).thenAnswer((_) async {});

    when(mockDeleteTripBloc.state).thenAnswer((_) => const DeleteTripState.loaded());
    when(mockDeleteTripBloc.stream).thenAnswer((_) => Stream.value(const DeleteTripState.loaded()));
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
      when(mockGetAllUserTripsBloc.state)
          .thenAnswer((_) => const GetAllUserTripsState.error(Errors.somethingWentWrong));
      when(mockGetAllUserTripsBloc.stream)
          .thenAnswer((_) => Stream.value(const GetAllUserTripsState.error(Errors.somethingWentWrong)));

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
