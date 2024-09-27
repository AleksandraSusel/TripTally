import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_tally/domain/entities/trips/trip_entity.dart';
import 'package:trip_tally/domain/use_case/get_all_user_trips_use_case.dart';
import 'package:trip_tally/domain/utils/failure.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';

import '../../generate_mocks.mocks.dart';
import '../../mocked_data.dart';

void main() {
  late MockTripsRepo mockTripsRepo;
  late GetAllUserTripsUseCase getAllUserTripsUseCase;

  setUp(() {
    mockTripsRepo = MockTripsRepo();
    getAllUserTripsUseCase = GetAllUserTripsUseCase(mockTripsRepo);
  });

  test('GetAllUserTripsUseCase returns a list of trips on success', () async {
    when(mockTripsRepo.getAllUserTrips()).thenAnswer((_) async => Right(mockedTripEntityList));

    final result = await getAllUserTripsUseCase.call();

    List<TripEntity>? tripEntities;
    result.fold((l) => null, (r) => tripEntities = r);
    expect(tripEntities, mockedTripEntityList);
    verify(mockTripsRepo.getAllUserTrips());
    verifyNoMoreInteractions(mockTripsRepo);
  });

  test('GetAllUserTripsUseCase returns a Failure when an error occurs', () async {
    when(mockTripsRepo.getAllUserTrips()).thenAnswer(
      (_) async => const Left(Failure(error: Errors.somethingWentWrong)),
    );

    final result = await getAllUserTripsUseCase.call();

    Errors? error;
    result.fold((l) => error = l.error, (r) => null);
    expect(error, Errors.somethingWentWrong);
    verify(mockTripsRepo.getAllUserTrips());
    verifyNoMoreInteractions(mockTripsRepo);
  });
}
