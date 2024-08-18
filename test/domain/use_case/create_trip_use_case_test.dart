import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_tally/domain/use_case/create_trip_use_case.dart';
import 'package:trip_tally/domain/utils/failure.dart';
import 'package:trip_tally/domain/utils/success.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';

import '../../generate_mocks.mocks.dart';
import '../../mocked_data.dart';

void main() {
  late MockTripsRepo mockTripsRepo;
  late CreateTripUseCase createTripUseCase;

  setUp(() {
    mockTripsRepo = MockTripsRepo();
    createTripUseCase = CreateTripUseCase(mockTripsRepo);
  });

  test('CreateTrip to creating a trip success', () async {
    when(mockTripsRepo.createTrip(mockedCreateTripEntity)).thenAnswer((_) async => const Right(Success()));
    final result = await createTripUseCase.call(mockedCreateTripEntity);
    Success? success;
    result.fold((l) => null, (r) => success = r);
    expect(success, const Success());
    verify(mockTripsRepo.createTrip(mockedCreateTripEntity));
    verifyNoMoreInteractions(mockTripsRepo);
  });

  test('CreateTrip to creating a trip failure', () async {
    when(mockTripsRepo.createTrip(mockedCreateTripEntity)).thenAnswer(
      (_) async => const Left(Failure(error: Errors.somethingWentWrong)),
    );
    final result = await createTripUseCase.call(mockedCreateTripEntity);
    Errors? error;
    result.fold((l) => error = l.error, (r) => null);
    expect(error, Errors.somethingWentWrong);
    verify(mockTripsRepo.createTrip(mockedCreateTripEntity));
    verifyNoMoreInteractions(mockTripsRepo);
  });
}
