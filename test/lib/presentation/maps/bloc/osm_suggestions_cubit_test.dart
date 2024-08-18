import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_tally/domain/entities/osm_map/place_entity.dart';
import 'package:trip_tally/domain/utils/failure.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/maps/osm_bloc/osm_suggestions_cubit.dart';

import '../../../../generate_mocks.mocks.dart';
import '../../../../mocked_data.dart';

void main() {
  group('OsmSuggestionsCubit', () {
    late MockLocationSuggestionsUseCase mockLocationSuggestionsUseCase;
    late OsmSuggestionsCubit osmSuggestionsCubit;

    setUp(() {
      mockLocationSuggestionsUseCase = MockLocationSuggestionsUseCase();
      osmSuggestionsCubit = OsmSuggestionsCubit(mockLocationSuggestionsUseCase);
    });

    tearDown(() {
      osmSuggestionsCubit.close();
    });

    final List<PlaceEntity> places = [
      mockedPlaceEntityV1,
      mockedPlaceEntityV2,
    ];

    blocTest<OsmSuggestionsCubit, OsmSuggestionsState>(
      'emits [OsmSuggestionsState.loaded()] when getSuggestions is called and succeeds',
      setUp: () => when(mockLocationSuggestionsUseCase(any)).thenAnswer((_) async => Right(places)),
      build: () => osmSuggestionsCubit,
      act: (cubit) => cubit.getSuggestions('query'),
      expect: () => [
        OsmSuggestionsState.loaded(places),
      ],
      verify: (_) {
        verify(mockLocationSuggestionsUseCase('query'));
      },
    );

    blocTest<OsmSuggestionsCubit, OsmSuggestionsState>(
      'emits [OsmSuggestionsState.error()] when getSuggestions is called and fails',
      setUp: () => when(mockLocationSuggestionsUseCase(any)).thenAnswer(
        (_) async => const Left(
          Failure(error: Errors.somethingWentWrong),
        ),
      ),
      build: () => osmSuggestionsCubit,
      act: (cubit) => cubit.getSuggestions('query'),
      expect: () => [
        const OsmSuggestionsState.error(Errors.somethingWentWrong),
      ],
      verify: (_) {
        verify(mockLocationSuggestionsUseCase('query'));
      },
    );
  });
}
