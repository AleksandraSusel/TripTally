import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_tally/domain/entities/trips/trip_entity.dart';
import 'package:trip_tally/domain/use_case/get_today_trips_use_case.dart';
import 'package:trip_tally/domain/utils/failure.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';

import '../../generate_mocks.mocks.dart';
import '../../mocked_data.dart';

void main() {
  late MockTripsRepo mockTripsRepo;
  late GetTodayTripsUseCase getTodayTripsUseCase;

  setUp(() {
    mockTripsRepo = MockTripsRepo();
    getTodayTripsUseCase = GetTodayTripsUseCase(mockTripsRepo);
  });

  test('GetTodayTripsUseCase returns trip successfully', () async {
    // Arrange
    final trip = mockedTripEntityV1;
    when(mockTripsRepo.getTodayTrips()).thenAnswer((_) async => Right<Failure, TripEntity?>(trip));

    // Act
    final result = await getTodayTripsUseCase.call();

    // Assert
    expect(result, Right<Failure, TripEntity?>(trip));
    verify(mockTripsRepo.getTodayTrips());
    verifyNoMoreInteractions(mockTripsRepo);
  });

  test('GetTodayTripsUseCase returns null when no trip today', () async {
    // Arrange
    when(mockTripsRepo.getTodayTrips()).thenAnswer((_) async => const Right<Failure, TripEntity?>(null));

    // Act
    final result = await getTodayTripsUseCase.call();

    // Assert
    expect(result, const Right<Failure, TripEntity?>(null));
    verify(mockTripsRepo.getTodayTrips());
    verifyNoMoreInteractions(mockTripsRepo);
  });

  test('GetTodayTripsUseCase returns failure when repository fails', () async {
    // Arrange
    const failure = Failure(error: Errors.somethingWentWrong);
    when(mockTripsRepo.getTodayTrips()).thenAnswer((_) async => const Left<Failure, TripEntity?>(failure));

    // Act
    final result = await getTodayTripsUseCase.call();

    // Assert
    expect(result, const Left<Failure, TripEntity?>(failure));
    verify(mockTripsRepo.getTodayTrips());
    verifyNoMoreInteractions(mockTripsRepo);
  });
}
