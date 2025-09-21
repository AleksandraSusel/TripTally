import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_tally/domain/entities/trips/trip_entity.dart';
import 'package:trip_tally/domain/utils/failure.dart';
import 'package:trip_tally/presentation/pages/home_page/bloc/get_today_trips_bloc.dart';
import 'package:trip_tally/presentation/utils/basic_state.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';

import '../../../../generate_mocks.mocks.dart';
import '../../../../mocked_data.dart';

void main() {
  late MockGetTodayTripsUseCase mockGetTodayTripsUseCase;

  setUp(() {
    mockGetTodayTripsUseCase = MockGetTodayTripsUseCase();
  });

  GetTodayTripsBloc getTodayTripsBloc() => GetTodayTripsBloc(mockGetTodayTripsUseCase);

  group('GetTodayTripsBloc', () {
    blocTest<GetTodayTripsBloc, BasicState<TripEntity?>>(
      'emits [LoadingState, LoadedState] when OnGetTodayTripsEvent is successful',
      setUp: () => when(mockGetTodayTripsUseCase()).thenAnswer(
        (_) async => Right<Failure, TripEntity?>(mockedTripEntityV1),
      ),
      build: getTodayTripsBloc,
      act: (bloc) => bloc.add(const OnGetTodayTripsEvent()),
      expect: () => [
        const LoadingState<TripEntity?>(),
        LoadedState<TripEntity?>(data: mockedTripEntityV1),
      ],
      verify: (_) {
        verify(mockGetTodayTripsUseCase()).called(1);
        verifyNoMoreInteractions(mockGetTodayTripsUseCase);
      },
    );

    blocTest<GetTodayTripsBloc, BasicState<TripEntity?>>(
      'emits [LoadingState, LoadedState] when OnGetTodayTripsEvent returns null',
      setUp: () => when(mockGetTodayTripsUseCase()).thenAnswer(
        (_) async => const Right<Failure, TripEntity?>(null),
      ),
      build: getTodayTripsBloc,
      act: (bloc) => bloc.add(const OnGetTodayTripsEvent()),
      expect: () => [
        const LoadingState<TripEntity?>(),
        const LoadedState<TripEntity?>(data: null),
      ],
      verify: (_) {
        verify(mockGetTodayTripsUseCase()).called(1);
        verifyNoMoreInteractions(mockGetTodayTripsUseCase);
      },
    );

    blocTest<GetTodayTripsBloc, BasicState<TripEntity?>>(
      'emits [LoadingState, FailureState] when OnGetTodayTripsEvent fails',
      setUp: () => when(mockGetTodayTripsUseCase()).thenAnswer(
        (_) async => const Left<Failure, TripEntity?>(Failure(error: Errors.somethingWentWrong)),
      ),
      build: getTodayTripsBloc,
      act: (bloc) => bloc.add(const OnGetTodayTripsEvent()),
      expect: () => [
        const LoadingState<TripEntity?>(),
        const FailureState<TripEntity?>(Errors.somethingWentWrong),
      ],
      verify: (_) {
        verify(mockGetTodayTripsUseCase()).called(1);
        verifyNoMoreInteractions(mockGetTodayTripsUseCase);
      },
    );
  });
}
