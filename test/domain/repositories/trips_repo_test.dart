import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_tally/data/repositories/trips_repo_impl.dart';
import 'package:trip_tally/domain/entities/trips/trip_entity.dart';
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

  test('CreateTrip to creating a trip, success', () async {
    when(mockedTripsDataSource.createTrip(any)).thenAnswer((_) async => mockedTripDtoV1);
    final result = await repo.createTrip(mockedCreateTripEntity);
    TripEntity? tripEntity;
    result.fold((l) => null, (r) => tripEntity = r);
    expect(tripEntity, TripEntity.fromDto(mockedTripDtoV1));
    verify(mockedTripsDataSource.createTrip(any)).called(1);
    verifyNoMoreInteractions(mockedTripsDataSource);
  });

  test('CreateTrip to creating a trip, failure', () async {
    when(mockedTripsDataSource.createTrip(any)).thenThrow(ApiException(Errors.somethingWentWrong));
    final result = await repo.createTrip(mockedCreateTripEntity);
    Errors? error;
    result.fold((l) => error = l.error, (r) => null);
    expect(error, Errors.somethingWentWrong);
    verify(mockedTripsDataSource.createTrip(any)).called(1);
    verifyNoMoreInteractions(mockedTripsDataSource);
  });

  test('getAllUserTrips should return a list of trips on success', () async {
    when(mockedTripsDataSource.getAllUserTrips()).thenAnswer((_) async => mockedTripDtoList);

    final result = await repo.getAllUserTrips();

    List<TripEntity>? tripEntities;
    result.fold((l) => null, (r) => tripEntities = r);

    expect(tripEntities, mockedTripDtoList.map(TripEntity.fromDto).toList());
    verify(mockedTripsDataSource.getAllUserTrips()).called(1);
    verifyNoMoreInteractions(mockedTripsDataSource);
  });

  test('getAllUserTrips should return a Failure when an exception is thrown', () async {
    when(mockedTripsDataSource.getAllUserTrips()).thenThrow(ApiException(Errors.somethingWentWrong));

    final result = await repo.getAllUserTrips();

    Errors? error;
    result.fold((l) => error = l.error, (r) => null);

    expect(error, Errors.somethingWentWrong);
    verify(mockedTripsDataSource.getAllUserTrips()).called(1);
    verifyNoMoreInteractions(mockedTripsDataSource);
  });

  test('DeleteTrip should successfully delete a trip', () async {
    when(mockedTripsDataSource.deleteTrip(any)).thenAnswer((_) async => const Success());

    final result = await repo.deleteTrip(mockedTripEntityV1.id);

    Success? success;
    result.fold((l) => null, (r) => success = r);
    expect(success, const Success());

    verify(mockedTripsDataSource.deleteTrip(any)).called(1);
    verifyNoMoreInteractions(mockedTripsDataSource);
  });

  test('DeleteTrip should return a Failure when an exception is thrown', () async {
    when(mockedTripsDataSource.deleteTrip(any)).thenThrow(ApiException(Errors.somethingWentWrong));

    final result = await repo.deleteTrip(mockedTripEntityV1.id);

    Errors? error;
    result.fold((l) => error = l.error, (r) => null);
    expect(error, Errors.somethingWentWrong);

    verify(mockedTripsDataSource.deleteTrip(any)).called(1);
    verifyNoMoreInteractions(mockedTripsDataSource);
  });

  test('GetTripById should successfully return a trip', () async {
    when(mockedTripsDataSource.getTripById(any)).thenAnswer((_) async => mockedTripDtoV1);

    final result = await repo.getTripById(mockedTripEntityV1.id);

    TripEntity? entity;
    result.fold((l) => null, (r) => entity = r);
    expect(entity, TripEntity.fromDto(mockedTripDtoV1));

    verify(mockedTripsDataSource.getTripById(any)).called(1);
    verifyNoMoreInteractions(mockedTripsDataSource);
  });

  test('GetTripById should return a Failure when an exception is thrown', () async {
    when(mockedTripsDataSource.getTripById(any)).thenThrow(ApiException(Errors.somethingWentWrong));

    final result = await repo.getTripById(mockedTripEntityV1.id);

    Errors? error;
    result.fold((l) => error = l.error, (r) => null);
    expect(error, Errors.somethingWentWrong);

    verify(mockedTripsDataSource.getTripById(any)).called(1);
    verifyNoMoreInteractions(mockedTripsDataSource);
  });

  test('UpdateTrip should successfully update a trip', () async {
    when(mockedTripsDataSource.updateTrip(any, any)).thenAnswer((_) async => const Success());

    final result = await repo.updateTrip(mockedTripEntityV1.id, mockedCreateTripEntity);

    Success? success;
    result.fold((l) => null, (r) => success = r);
    expect(success, const Success());

    verify(mockedTripsDataSource.updateTrip(any, any)).called(1);
    verifyNoMoreInteractions(mockedTripsDataSource);
  });

  test('UpdateTrip should return a Failure when an exception is thrown', () async {
    when(mockedTripsDataSource.updateTrip(any, any)).thenThrow(ApiException(Errors.somethingWentWrong));

    final result = await repo.updateTrip(mockedTripEntityV1.id, mockedCreateTripEntity);

    Errors? error;
    result.fold((l) => error = l.error, (r) => null);
    expect(error, Errors.somethingWentWrong);

    verify(mockedTripsDataSource.updateTrip(any, any)).called(1);
    verifyNoMoreInteractions(mockedTripsDataSource);
  });

  test('getTodayTrips should return a trip on success', () async {
    when(mockedTripsDataSource.getTodayTrips()).thenAnswer((_) async => mockedTripDtoV1);

    final result = await repo.getTodayTrips();

    TripEntity? tripEntity;
    result.fold((l) => null, (r) => tripEntity = r);

    expect(tripEntity, TripEntity.fromDto(mockedTripDtoV1));
    verify(mockedTripsDataSource.getTodayTrips()).called(1);
    verifyNoMoreInteractions(mockedTripsDataSource);
  });

  test('getTodayTrips should return null when no trip today', () async {
    when(mockedTripsDataSource.getTodayTrips()).thenAnswer((_) async => null);

    final result = await repo.getTodayTrips();

    TripEntity? tripEntity;
    result.fold((l) => null, (r) => tripEntity = r);

    expect(tripEntity, null);
    verify(mockedTripsDataSource.getTodayTrips()).called(1);
    verifyNoMoreInteractions(mockedTripsDataSource);
  });

  test('getTodayTrips should return a Failure when an exception is thrown', () async {
    when(mockedTripsDataSource.getTodayTrips()).thenThrow(ApiException(Errors.somethingWentWrong));

    final result = await repo.getTodayTrips();

    Errors? error;
    result.fold((l) => error = l.error, (r) => null);

    expect(error, Errors.somethingWentWrong);
    verify(mockedTripsDataSource.getTodayTrips()).called(1);
    verifyNoMoreInteractions(mockedTripsDataSource);
  });
}
