import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_tally/domain/entities/trips/trip_entity.dart';
import 'package:trip_tally/presentation/pages/home_page/home_page.dart';
import 'package:trip_tally/presentation/utils/basic_state.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/bottom_navigation_bar/bottom_nav_item.dart';

import '../../../generate_mocks.mocks.dart';
import '../../../golden_test_runner.dart';
import '../../../mocked_data.dart';

void main() {
  late MockGetTodayTripsBloc mockGetTodayTripsBloc;

  setUp(() {
    mockGetTodayTripsBloc = MockGetTodayTripsBloc();

    when(mockGetTodayTripsBloc.state).thenAnswer(
      (_) => const LoadedState<TripEntity?>(data: null),
    );
    when(mockGetTodayTripsBloc.stream).thenAnswer(
      (_) => Stream.value(const LoadedState<TripEntity?>(data: null)),
    );
    when(mockGetTodayTripsBloc.close()).thenAnswer((_) async {});
  });

  Widget buildPage() => HomePage(
        getTodayTripsBloc: mockGetTodayTripsBloc,
      );

  runGoldenTest(
    'HomePage - Dashboard',
    builder: buildPage,
  );

  runGoldenTest(
    'HomePage - Trips',
    whilePerforming: (tester) async {
      await tester.tap(find.byType(BottomNavItem).at(1));
      return;
    },
    builder: buildPage,
  );

  runGoldenTest(
    'HomePage - Dashboard with trip',
    builder: () {
      when(mockGetTodayTripsBloc.state).thenAnswer(
        (_) => LoadedState<TripEntity?>(data: mockedTripEntityV1),
      );
      when(mockGetTodayTripsBloc.stream).thenAnswer(
        (_) => Stream.value(LoadedState<TripEntity?>(data: mockedTripEntityV1)),
      );
      return buildPage();
    },
  );
}
