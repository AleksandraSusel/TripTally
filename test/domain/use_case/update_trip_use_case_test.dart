import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_tally/domain/use_case/update_trip_use_case.dart';
import 'package:trip_tally/domain/utils/failure.dart';
import 'package:trip_tally/domain/utils/success.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';

import '../../generate_mocks.mocks.dart';
import '../../mocked_data.dart';

void main() {
  late MockTripsRepo mockTripsRepo;
  late UpdateTripUseCase updateTripUseCase;

  setUp(() {
    mockTripsRepo = MockTripsRepo();
    updateTripUseCase = UpdateTripUseCase(mockTripsRepo);
  });

  test('GetTripUseCase returns a trip when successful', () async {
    when(mockTripsRepo.updateTrip(any, any)).thenAnswer((_) async => const Right(Success()));

    final result =
        await updateTripUseCase(UpdateTripUseCaseParams(id: mockedTripEntityV1.id, entity: mockedCreateTripEntity));

    Success? success;
    result.fold((l) => null, (r) => success = r);
    expect(success, const Success());
    verify(mockTripsRepo.updateTrip(any, any)).called(1);
    verifyNoMoreInteractions(mockTripsRepo);
  });

  test('GetTripUseCase returns a Failure when an error occurs', () async {
    when(mockTripsRepo.updateTrip(any, any)).thenAnswer(
      (_) async => const Left(Failure(error: Errors.somethingWentWrong)),
    );

    final result =
        await updateTripUseCase(UpdateTripUseCaseParams(id: mockedTripEntityV1.id, entity: mockedCreateTripEntity));

    Errors? error;
    result.fold((l) => error = l.error, (r) => null);
    expect(error, Errors.somethingWentWrong);
    verify(mockTripsRepo.updateTrip(any, any)).called(1);
    verifyNoMoreInteractions(mockTripsRepo);
  });
}
