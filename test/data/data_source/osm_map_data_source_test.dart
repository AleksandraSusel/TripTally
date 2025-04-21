import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_tally/data/data_source/osm_map_data_source_impl.dart';
import 'package:trip_tally/data/dto/osm_map/osm_response_dto.dart';
import 'package:trip_tally/domain/data_source/osm_map_data_source.dart';
import 'package:trip_tally/domain/utils/exception.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';

import '../../generate_mocks.mocks.dart';
import '../../mocked_data.dart';

void main() {
  late MockOsmClient mockOsmClient;
  late OsmMapDataSource osmMapDataSource;
  setUp(() {
    mockOsmClient = MockOsmClient();
    osmMapDataSource = OsmMapDataSourceImpl(mockOsmClient);
  });

  test('OsmMapDataSource.getPlaces(), fetches data correctly from API', () async {
    when(mockOsmClient.getLocationSuggestions(input: anyNamed('input'))).thenAnswer(
      (_) async => const OsmResponseDto(
        features: [mockedFeatureDto],
      ),
    );

    final result = await osmMapDataSource.getPlaces('testInput');
    expect(result, [mockedFeatureDto]);
    verify(mockOsmClient.getLocationSuggestions(input: anyNamed('input')));
    verifyNoMoreInteractions(mockOsmClient);
  });

  test(
    'OsmMapDataSource.getPlaces(), throws ApiException when API Exception is raised',
    () async {
      when(mockOsmClient.getLocationSuggestions(input: anyNamed('input'))).thenThrow(Exception());
      final future = await osmMapDataSource.getPlaces('testInput');

      await expectLater(
        future,
        throwsA(
          isA<ApiException>().having((e) => e.failure, 'Something went error', Errors.somethingWentWrong),
        ),
      );
      verify(mockOsmClient.getLocationSuggestions(input: anyNamed('input')));
      verifyNoMoreInteractions(mockOsmClient);
    },
  );
}
