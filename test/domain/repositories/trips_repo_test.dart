import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_tally/data/repositories/trips_repo_impl.dart';
import 'package:trip_tally/domain/repositories/trips_repo.dart';
import 'package:trip_tally/domain/utils/exception.dart';
import 'package:trip_tally/domain/utils/success.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';

import '../../generate_mocks.mocks.dart';
import '../../mocked_data.dart';

void main() {
  late MockTripsDataSource mockedTripsDataSource;
  late TripsRepo repo;

  setUpAll(() {
    mockedTripsDataSource = MockTripsDataSource();
    repo = TripsRepoImpl(mockedTripsDataSource);
  });

  test('CreateTrip to creating a trip,success', () async {
    when(mockedTripsDataSource.createTrip(mockedCreateTripDto)).thenAnswer((_) async => const Success());
    final result = await repo.createTrip(mockedCreateTripEntity);
    Success? success;
    result.fold((l) => null, (r) => success = r);
    expect(success, const Success());
    verify(mockedTripsDataSource.createTrip(mockedCreateTripDto));
    verifyNoMoreInteractions(mockedTripsDataSource);
  });

  test('CreateTrip to creating a trip, failure', () async {
    when(mockedTripsDataSource.createTrip(mockedCreateTripDto)).thenThrow(ApiException(Errors.somethingWentWrong));
    final result = await repo.createTrip(mockedCreateTripEntity);
    Errors? error;
    result.fold((l) => error = l.error, (r) => null);
    expect(error, Errors.somethingWentWrong);
    verify(mockedTripsDataSource.createTrip(mockedCreateTripDto));
    verifyNoMoreInteractions(mockedTripsDataSource);
  });
}
