import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_tally/presentation/pages/new_trip_page/bloc/new_trip_state.dart';
import 'package:trip_tally/presentation/pages/new_trip_page/new_trip_page.dart';

import '../../../generate_mocks.mocks.dart';
import '../../../golden_test_runner.dart';

void main() {
  late MockNewTripBloc mockNewTripBloc;
  setUp(() {
    mockNewTripBloc = MockNewTripBloc();
  });
  setUp(() {
    when(mockNewTripBloc.state).thenAnswer((_) => const NewTripState.initial());
    when(mockNewTripBloc.close()).thenAnswer((_) async {});
  });

  runGoldenTest(
    'NewTripPage initial',
    builder: () {
      when(mockNewTripBloc.stream).thenAnswer(
        (realInvocation) => Stream.value(const NewTripState.initial()),
      );
      return NewTripPage(bloc: mockNewTripBloc);
    },
  );
}
