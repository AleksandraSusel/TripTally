import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_tally/domain/entities/trips/trip_entity.dart';
import 'package:trip_tally/domain/use_case/get_trip_use_case.dart';
import 'package:trip_tally/domain/utils/failure.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';

import '../../generate_mocks.mocks.dart';
import '../../mocked_data.dart';

void main() {
  late MockTripsRepo mockTripsRepo;
  late GetTripUseCase getTripUseCase;

  setUp(() {
    mockTripsRepo = MockTripsRepo();
    getTripUseCase = GetTripUseCase(mockTripsRepo);
  });

  test('GetTripUseCase returns a trip when successful', () async {
    when(mockTripsRepo.getTripById(any)).thenAnswer((_) async => Right(mockedTripEntityV1));

    final result = await getTripUseCase(mockedTripEntityV1.id);

    TripEntity? entity;
    result.fold((l) => null, (r) => entity = r);
    expect(entity, mockedTripEntityV1);
    verify(mockTripsRepo.getTripById(any)).called(1);
    verifyNoMoreInteractions(mockTripsRepo);
  });

  test('GetTripUseCase returns a Failure when an error occurs', () async {
    when(mockTripsRepo.getTripById(any)).thenAnswer(
      (_) async => const Left(Failure(error: Errors.somethingWentWrong)),
    );

    final result = await getTripUseCase(mockedTripEntityV1.id);

    Errors? error;
    result.fold((l) => error = l.error, (r) => null);
    expect(error, Errors.somethingWentWrong);
    verify(mockTripsRepo.getTripById(any)).called(1);
    verifyNoMoreInteractions(mockTripsRepo);
  });
}
