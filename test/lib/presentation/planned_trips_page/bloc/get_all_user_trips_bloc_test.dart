import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_tally/domain/entities/trips/trip_entity.dart';
import 'package:trip_tally/domain/utils/failure.dart';
import 'package:trip_tally/presentation/pages/planned_trips_page/bloc/get_all_user_trips_bloc.dart';
import 'package:trip_tally/presentation/utils/basic_state.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';

import '../../../../generate_mocks.mocks.dart';
import '../../../../mocked_data.dart';

void main() {
  late MockGetAllUserTripsUseCase mockGetAllUserTripsUseCase;

  setUp(() {
    mockGetAllUserTripsUseCase = MockGetAllUserTripsUseCase();
  });

  GetAllUserTripsBloc getAllUserTripsBloc() => GetAllUserTripsBloc(mockGetAllUserTripsUseCase);

  group('GetAllUserTripsBloc', () {
    blocTest<GetAllUserTripsBloc, BasicState<List<TripEntity>>>(
      'emits [GetAllUserTripsState.loaded] when OnGetAllUserTripsEvent is successful',
      setUp: () => when(mockGetAllUserTripsUseCase()).thenAnswer(
        (_) async => Right(mockedTripEntityList),
      ),
      build: getAllUserTripsBloc,
      act: (bloc) => bloc.add(const OnGetAllUserTripsEvent()),
      expect: () => [
        const LoadingState<List<TripEntity>>(),
        LoadedState<List<TripEntity>>(data: mockedTripEntityList),
      ],
    );

    blocTest<GetAllUserTripsBloc, BasicState<List<TripEntity>>>(
      'emits [GetAllUserTripsState.error] when OnGetAllUserTripsEvent fails',
      setUp: () => when(mockGetAllUserTripsUseCase()).thenAnswer(
        (_) async => const Left(Failure(error: Errors.somethingWentWrong)),
      ),
      build: getAllUserTripsBloc,
      act: (bloc) => bloc.add(const OnGetAllUserTripsEvent()),
      expect: () => [
        const LoadingState<List<TripEntity>>(),
        const FailureState<List<TripEntity>>(Errors.somethingWentWrong),
      ],
    );
  });
}
