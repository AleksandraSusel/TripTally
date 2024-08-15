import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_tally/domain/entities/osm_map/place_entity.dart';
import 'package:trip_tally/domain/use_case/location_suggestions_use_case.dart';
import 'package:trip_tally/domain/utils/failure.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';

import '../../mocked_data.dart';
import '../../mocks.mocks.dart';

void main() {
  late MockOsmMapRepository mockOsmMapRepository;
  late LocationSuggestionsUseCase locationSuggestionsUseCase;

  setUp(() {
    mockOsmMapRepository = MockOsmMapRepository();
    locationSuggestionsUseCase = LocationSuggestionsUseCase(mockOsmMapRepository);
  });

  test('locationSuggestionsUseCase fetches places successfully', () async {
    when(mockOsmMapRepository.getPlaces(any)).thenAnswer((_) async => const Right([mockedPlaceEntityV1]));
    final result = await locationSuggestionsUseCase('testInput');
    List<PlaceEntity>? places;
    result.fold((l) => null, (r) => places = r);
    expect(places, [mockedPlaceEntityV1]);
    verify(mockOsmMapRepository.getPlaces(any));
    verifyNoMoreInteractions(mockOsmMapRepository);
  });

  test('locationSuggestionsUseCase throws error from Left Failure', () async {
    when(mockOsmMapRepository.getPlaces(any)).thenAnswer(
      (_) async => const Left(Failure(error: Errors.somethingWentWrong)),
    );
    final result = await locationSuggestionsUseCase('testInput');
    Errors? error;
    result.fold((l) => error = l.error, (r) => null);
    expect(error, Errors.somethingWentWrong);
    verify(mockOsmMapRepository.getPlaces(any));
    verifyNoMoreInteractions(mockOsmMapRepository);
  });
}
