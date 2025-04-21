import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_tally/domain/entities/osm_map/place_entity.dart';
import 'package:trip_tally/domain/utils/failure.dart';
import 'package:trip_tally/presentation/utils/basic_state.dart';
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

    blocTest<OsmSuggestionsCubit, BasicState<List<PlaceEntity>>>(
      'emits [LoadedState(data: places)] when getSuggestions is called and succeeds',
      setUp: () => when(mockLocationSuggestionsUseCase(any)).thenAnswer((_) async => Right(places)),
      build: () => osmSuggestionsCubit,
      act: (cubit) => cubit.getSuggestions('query'),
      expect: () => [
        LoadedState<List<PlaceEntity>>(data: places),
      ],
      verify: (_) {
        verify(mockLocationSuggestionsUseCase('query')).called(1);
      },
    );

    blocTest<OsmSuggestionsCubit, BasicState<List<PlaceEntity>>>(
      'emits [FailureState(error: somethingWentWrong)] when getSuggestions is called and fails',
      setUp: () => when(mockLocationSuggestionsUseCase(any)).thenAnswer(
        (_) async => const Left(
          Failure(error: Errors.somethingWentWrong),
        ),
      ),
      build: () => osmSuggestionsCubit,
      act: (cubit) => cubit.getSuggestions('query'),
      expect: () => [
        const FailureState<List<PlaceEntity>>(Errors.somethingWentWrong),
      ],
      verify: (_) {
        verify(mockLocationSuggestionsUseCase('query')).called(1);
      },
    );
  });
}
