part of 'osm_suggestions_cubit.dart';

@freezed
class OsmSuggestionsState with _$OsmSuggestionsState {
  const factory OsmSuggestionsState.loaded(List<PlaceEntity> suggestions) = _Loaded;

  const factory OsmSuggestionsState.loading() = _Loading;

  const factory OsmSuggestionsState.error(Errors error) = _Error;
}
