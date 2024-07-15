import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_tally/data/data_source/trips_data_source_impl.dart';
import 'package:trip_tally/data/dto/trips/create_trip_dto.dart';
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

  test('CreateTrip to creating a trip, success', () async {
    final dto = CreateTripDto(
      cityName: mockedCreateTripDto.cityName,
      transportType: mockedCreateTripDto.transportType,
      countryCode: mockedCreateTripDto.countryCode,
      dateFrom: mockedCreateTripDto.dateFrom,
      dateTo: mockedCreateTripDto.dateTo,
      plannedCost: mockedCreateTripDto.plannedCost,
    );
    when(mockApiClient.addTrip(dto)).thenAnswer((_) async => const Success());

    final result = await tripsDataSource.createTrip(dto);
    expect(result, const Success());
    verify(mockApiClient.addTrip(dto)).called(1);
    verifyNoMoreInteractions(mockApiClient);
  });

  test(
    'CreateTrip throws ApiException on catch',
    () async {
      final dto = CreateTripDto(
        cityName: mockedCreateTripDto.cityName,
        transportType: mockedCreateTripDto.transportType,
        countryCode: mockedCreateTripDto.countryCode,
        dateFrom: mockedCreateTripDto.dateFrom,
        dateTo: mockedCreateTripDto.dateTo,
        plannedCost: mockedCreateTripDto.plannedCost,
      );

      when(mockApiClient.addTrip(any)).thenThrow(Exception());
      await expectLater(
        tripsDataSource.createTrip(dto),
        throwsA(
          isA<ApiException>().having((e) => e.failure, 'Unknown error', Errors.unknownError),
        ),
      );
      verify(mockApiClient.addTrip(dto));
      verifyNoMoreInteractions(mockApiClient);
    },
  );
}
