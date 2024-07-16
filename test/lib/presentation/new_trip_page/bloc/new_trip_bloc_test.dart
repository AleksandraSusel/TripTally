import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_tally/domain/utils/failure.dart';
import 'package:trip_tally/domain/utils/success.dart';
import 'package:trip_tally/presentation/pages/new_trip_page/bloc/new_trip_bloc.dart';
import 'package:trip_tally/presentation/pages/new_trip_page/bloc/new_trip_event.dart';
import 'package:trip_tally/presentation/pages/new_trip_page/bloc/new_trip_state.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';

import '../../../../mocks.mocks.dart';

void main() {
  late MockCreateTripUseCase mockAddTripUseCase;

  setUp(() {
    mockAddTripUseCase = MockCreateTripUseCase();
  });

  NewTripBloc newTripBloc() => NewTripBloc(mockAddTripUseCase);

  group('NewTripBloc', () {
    blocTest<NewTripBloc, NewTripState>(
      'emits [NewTripState.success()] when AddTripEvent is successful',
      setUp: () => when(mockAddTripUseCase(any)).thenAnswer((_) async => const Right(Success())),
      build: newTripBloc,
      act: (bloc) => bloc.add(
        const AddTripEvent(
          cityName: 'Wrocław',
          transportType: 'Samolot',
          countryCode: 'PL',
          dateFrom: '2022-01-02',
          dateTo: '2022-01-02',
          plannedCost: 100,
        ),
      ),
      expect: () => [
        const NewTripState.success(),
      ],
    );

    blocTest<NewTripBloc, NewTripState>(
      'emits [NewTripState.failure] when AddTripEvent fails',
      setUp: () => when(mockAddTripUseCase(any)).thenAnswer(
        (_) async => const Left(Failure(error: Errors.somethingWentWrong)),
      ),
      build: newTripBloc,
      act: (bloc) => bloc.add(
        const AddTripEvent(
          cityName: 'Wrocław',
          transportType: 'Samolot',
          countryCode: 'PL',
          dateFrom: '2022-01-02',
          dateTo: '2022-01-02',
          plannedCost: 100,
        ),
      ),
      expect: () => [
        const NewTripState.failure(Errors.somethingWentWrong),
      ],
    );
  });
}
