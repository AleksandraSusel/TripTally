import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_tally/data/repositories/trips_repo_impl.dart';
import 'package:trip_tally/domain/repositories/trips_repo.dart';
import 'package:trip_tally/domain/utils/exception.dart';
import 'package:trip_tally/domain/utils/success.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';

import '../../mocked_data.dart';
import '../../mocks.mocks.dart';

void main() {
  late MockTripsDataSource mockedTripsDataSource;
  late TripsRepo repo;

  setUpAll(() {
    mockedTripsDataSource = MockTripsDataSource();
    repo = TripsRepoImpl(mockedTripsDataSource);
  });

  test('AddTrip to add a trip,success', () async {
    when(mockedTripsDataSource.addTrip(mockedAddTripDto)).thenAnswer((_) async => const Success());
    final result = await repo.newTrip(mockedAddTripEntity);
    Success? success;
    result.fold((l) => null, (r) => success = r);
    expect(success, const Success());
    verify(mockedTripsDataSource.addTrip(mockedAddTripDto));
    verifyNoMoreInteractions(mockedTripsDataSource);
  });

  test('AddTrip to add a trip, failure', () async {
    when(mockedTripsDataSource.addTrip(mockedAddTripDto)).thenThrow(ApiException(Errors.somethingWentWrong));
    final result = await repo.newTrip(mockedAddTripEntity);
    Errors? error;
    result.fold((l) => error = l.error, (r) => null);
    expect(error, Errors.somethingWentWrong);
    verify(mockedTripsDataSource.addTrip(mockedAddTripDto));
    verifyNoMoreInteractions(mockedTripsDataSource);
  });
}
