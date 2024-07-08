import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_tally/data/data_source/trips_data_source_impl.dart';
import 'package:trip_tally/data/dto/trips/add_trip_dto.dart';
import 'package:trip_tally/domain/data_source/trips_data_source.dart';
import 'package:trip_tally/domain/utils/exception.dart';
import 'package:trip_tally/domain/utils/success.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';

import '../../mocked_data.dart';
import '../../mocks.mocks.dart';

void main() {
  late MockApiClient mockApiClient;
  late TripsDataSource tripsDataSource;
  setUp(() {
    mockApiClient = MockApiClient();
    tripsDataSource = TripsDataSourceImpl(mockApiClient);
  });

  test('AddTrip to add a trip, success', () async {
    final dto = AddTripDto(
      cityName: mockedAddTripDto.cityName,
      transportType: mockedAddTripDto.transportType,
      countryCode: mockedAddTripDto.countryCode,
      dateFrom: mockedAddTripDto.dateFrom,
      dateTo: mockedAddTripDto.dateTo,
      plannedCost: mockedAddTripDto.plannedCost,
    );
    when(mockApiClient.addTrip(dto)).thenAnswer((_) async => const Success());

    final result = await tripsDataSource.addTrip(dto);
    expect(result, const Success());
    verify(mockApiClient.addTrip(dto)).called(1);
    verifyNoMoreInteractions(mockApiClient);
  });

  test(
    'AddTrip throws ApiException on catch',
    () async {
      final dto = AddTripDto(
        cityName: mockedAddTripDto.cityName,
        transportType: mockedAddTripDto.transportType,
        countryCode: mockedAddTripDto.countryCode,
        dateFrom: mockedAddTripDto.dateFrom,
        dateTo: mockedAddTripDto.dateTo,
        plannedCost: mockedAddTripDto.plannedCost,
      );

      when(mockApiClient.addTrip(any)).thenThrow(Exception());
      await expectLater(
        tripsDataSource.addTrip(dto),
        throwsA(
          isA<ApiException>().having((e) => e.failure, 'Unknown error', Errors.unknownError),
        ),
      );
      verify(mockApiClient.addTrip(dto));
      verifyNoMoreInteractions(mockApiClient);
    },
  );
}
