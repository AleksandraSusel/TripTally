import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_tally/domain/use_case/add_trip_use_case.dart';
import 'package:trip_tally/domain/utils/failure.dart';
import 'package:trip_tally/domain/utils/success.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';

import '../../mocked_data.dart';
import '../../mocks.mocks.dart';

void main() {
  late MockTripsRepo mockTripsRepo;
  late AddTripUseCase addTripUseCase;

  setUp(() {
    mockTripsRepo = MockTripsRepo();
    addTripUseCase = AddTripUseCase(mockTripsRepo);
  });

  test('AddTrip to add a trip success', () async {
    when(mockTripsRepo.newTrip(mockedAddTripEntity)).thenAnswer((_) async => const Right(Success()));
    final result = await addTripUseCase.call(mockedAddTripEntity);
    Success? success;
    result.fold((l) => null, (r) => success = r);
    expect(success, const Success());
    verify(mockTripsRepo.newTrip(mockedAddTripEntity));
    verifyNoMoreInteractions(mockTripsRepo);
  });

  test('AddTrip to add a trip failure', () async {
    when(mockTripsRepo.newTrip(mockedAddTripEntity)).thenAnswer(
      (_) async => const Left(Failure(error: Errors.somethingWentWrong)),
    );
    final result = await addTripUseCase.call(mockedAddTripEntity);
    Errors? error;
    result.fold((l) => error = l.error, (r) => null);
    expect(error, Errors.somethingWentWrong);
    verify(mockTripsRepo.newTrip(mockedAddTripEntity));
    verifyNoMoreInteractions(mockTripsRepo);
  });
}
