import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_tally/data/repositories/osm_map_repository_impl.dart';
import 'package:trip_tally/domain/entities/osm_map/place_entity.dart';
import 'package:trip_tally/domain/repositories/osm_map_repository.dart';
import 'package:trip_tally/domain/utils/exception.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';

import '../../mocked_data.dart';
import '../../mocks.mocks.dart';

void main() {
  late MockOsmMapDataSource mockOsmMapDataSource;
  late OsmMapRepository repo;

  setUpAll(() {
    mockOsmMapDataSource = MockOsmMapDataSource();
    repo = OsmMapRepositoryImpl(mockOsmMapDataSource);
  });

  test('OsmMapRepository.getPlaces() fetches data and transform dto to entity', () async {
    when(mockOsmMapDataSource.getPlaces(any)).thenAnswer((_) async => [mockedFeatureDto]);
    final result = await repo.getPlaces('testInput');
    List<PlaceEntity>? places;
    result.fold((l) => null, (r) => places = r);
    expect(places, [mockedPlaceEntityV1]);
    verify(mockOsmMapDataSource.getPlaces(any));
    verifyNoMoreInteractions(mockOsmMapDataSource);
  });

  test('OsmMapRepository.getPlaces() throws error when exception raised', () async {
    when(mockOsmMapDataSource.getPlaces(any)).thenThrow(ApiException(Errors.somethingWentWrong));
    final result = await repo.getPlaces('testInput');
    Errors? error;
    result.fold((l) => error = l.error, (r) => null);
    expect(error, Errors.somethingWentWrong);
    verify(mockOsmMapDataSource.getPlaces(any));
    verifyNoMoreInteractions(mockOsmMapDataSource);
  });
}
