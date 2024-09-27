import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_tally/data/data_source/trips_data_source_impl.dart';
import 'package:trip_tally/data/dto/trips/create_trip_dto.dart';
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
    final dto = CreateTripDto(
      cityName: mockedCreateTripDto.cityName,
      transportType: mockedCreateTripDto.transportType,
      countryCode: mockedCreateTripDto.countryCode,
      dateFrom: mockedCreateTripDto.dateFrom,
      dateTo: mockedCreateTripDto.dateTo,
      amount: mockedCreateTripDto.amount,
      currency: mockedCreateTripDto.currency,
    );
    when(mockApiClient.createTrip(dto)).thenAnswer((_) async => const Success());

    final result = await tripsDataSource.createTrip(dto);
    expect(result, const Success());
    verify(mockApiClient.createTrip(dto)).called(1);
    verifyNoMoreInteractions(mockApiClient);
  });

  test('CreateTrip throws ApiException on catch', () async {
    final dto = CreateTripDto(
      cityName: mockedCreateTripDto.cityName,
      transportType: mockedCreateTripDto.transportType,
      countryCode: mockedCreateTripDto.countryCode,
      dateFrom: mockedCreateTripDto.dateFrom,
      dateTo: mockedCreateTripDto.dateTo,
      amount: mockedCreateTripDto.amount,
      currency: mockedCreateTripDto.currency,
    );

    when(mockApiClient.createTrip(any)).thenThrow(Exception());

    await expectLater(
      tripsDataSource.createTrip(dto),
      throwsA(
        isA<ApiException>().having((e) => e.failure, 'Unknown error', Errors.unknownError),
      ),
    );

    verify(mockApiClient.createTrip(dto));
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
}
