import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_tally/data/data_source/trips_data_source_impl.dart';
import 'package:trip_tally/domain/data_source/trips_data_source.dart';
import 'package:trip_tally/domain/utils/exception.dart';
import 'package:trip_tally/domain/utils/success.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';

import '../../generate_mocks.mocks.dart';
import '../../mocked_data.dart';

void main() {
  late MockApiClient mockApiClient;
  late TripsDataSource tripsDataSource;

  setUp(() {
    mockApiClient = MockApiClient();
    tripsDataSource = TripsDataSourceImpl(mockApiClient);
  });

  test('CreateTrip to creating a trip, success', () async {
    when(mockApiClient.createTrip(any)).thenAnswer((_) async => mockedTripDtoV1);

    final result = await tripsDataSource.createTrip(mockedCreateTripDto);
    expect(result, mockedTripDtoV1);
    verify(mockApiClient.createTrip(any)).called(1);
    verifyNoMoreInteractions(mockApiClient);
  });

  test('CreateTrip throws ApiException on catch', () async {
    when(mockApiClient.createTrip(any)).thenThrow(Exception());

    await expectLater(
      tripsDataSource.createTrip(mockedCreateTripDto),
      throwsA(
        isA<ApiException>().having((e) => e.failure, 'Unknown error', Errors.unknownError),
      ),
    );

    verify(mockApiClient.createTrip(any));
    verifyNoMoreInteractions(mockApiClient);
  });

  test('GetAllUserTrips to get trips, success', () async {
    when(mockApiClient.getAllUserTrips()).thenAnswer((_) async => mockedGetTripsDto);

    final result = await tripsDataSource.getAllUserTrips();
    expect(result, mockedGetTripsDto.trips);
    verify(mockApiClient.getAllUserTrips()).called(1);
    verifyNoMoreInteractions(mockApiClient);
  });

  test('GetAllUserTrips throws ApiException on catch', () async {
    when(mockApiClient.getAllUserTrips()).thenThrow(Exception());

    await expectLater(
      tripsDataSource.getAllUserTrips(),
      throwsA(
        isA<ApiException>().having((e) => e.failure, 'Unknown error', Errors.unknownError),
      ),
    );

    verify(mockApiClient.getAllUserTrips());
    verifyNoMoreInteractions(mockApiClient);
  });

  test('DeleteTrip should successfully delete a trip', () async {
    when(mockApiClient.deleteTrip(any)).thenAnswer((_) async => const Success());

    final result = await tripsDataSource.deleteTrip(mockedTripDtoV1.id);
    expect(result, const Success());

    verify(mockApiClient.deleteTrip(any)).called(1);
    verifyNoMoreInteractions(mockApiClient);
  });

  test('DeleteTrip throws ApiException on catch', () async {
    when(mockApiClient.deleteTrip(any)).thenThrow(Exception());

    await expectLater(
      tripsDataSource.deleteTrip(mockedTripDtoV1.id),
      throwsA(
        isA<ApiException>().having((e) => e.failure, 'Unknown error', Errors.unknownError),
      ),
    );

    verify(mockApiClient.deleteTrip(any));
    verifyNoMoreInteractions(mockApiClient);
  });

  test('GetTripById should successfully return a trip', () async {
    when(mockApiClient.getTripById(any)).thenAnswer((_) async => mockedTripDtoV1);

    final result = await tripsDataSource.getTripById(mockedTripDtoV1.id);
    expect(result, mockedTripDtoV1);

    verify(mockApiClient.getTripById(any)).called(1);
    verifyNoMoreInteractions(mockApiClient);
  });

  test('GetTripById throws ApiException on catch', () async {
    when(mockApiClient.getTripById(any)).thenThrow(Exception());

    await expectLater(
      tripsDataSource.getTripById(mockedTripDtoV1.id),
      throwsA(
        isA<ApiException>().having((e) => e.failure, 'Unknown error', Errors.unknownError),
      ),
    );

    verify(mockApiClient.getTripById(any));
    verifyNoMoreInteractions(mockApiClient);
  });

  test('UpdateTrip should successfully updates a trip', () async {
    when(mockApiClient.updateTrip(any, any)).thenAnswer((_) async {});

    final result = await tripsDataSource.updateTrip(mockedTripDtoV1.id, mockedCreateTripDto);
    expect(result, const Success());

    verify(mockApiClient.updateTrip(any, any)).called(1);
    verifyNoMoreInteractions(mockApiClient);
  });

  test('GetTripById throws ApiException on catch', () async {
    when(mockApiClient.updateTrip(any, any)).thenThrow(Exception());

    await expectLater(
      tripsDataSource.updateTrip(mockedTripDtoV1.id, mockedCreateTripDto),
      throwsA(
        isA<ApiException>().having((e) => e.failure, 'Unknown error', Errors.unknownError),
      ),
    );

    verify(mockApiClient.updateTrip(any, any));
    verifyNoMoreInteractions(mockApiClient);
  });

  test('GetTodayTrips to get today trips, success', () async {
    when(mockApiClient.getTodayTrips()).thenAnswer((_) async => mockedTripDtoV1);

    final result = await tripsDataSource.getTodayTrips();
    expect(result, mockedTripDtoV1);
    verify(mockApiClient.getTodayTrips()).called(1);
    verifyNoMoreInteractions(mockApiClient);
  });

  test('GetTodayTrips throws ApiException on catch', () async {
    when(mockApiClient.getTodayTrips()).thenThrow(Exception());

    await expectLater(
      tripsDataSource.getTodayTrips(),
      throwsA(
        isA<ApiException>().having((e) => e.failure, 'Unknown error', Errors.unknownError),
      ),
    );

    verify(mockApiClient.getTodayTrips());
    verifyNoMoreInteractions(mockApiClient);
  });
}
