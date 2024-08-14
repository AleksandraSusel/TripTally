import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_tally/domain/entities/osm_map/place_entity.dart';
import 'package:trip_tally/domain/use_case/location_suggestions_use_case.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';

part 'osm_suggestions_state.dart';

part 'osm_suggestions_cubit.freezed.dart';

@injectable
class OsmSuggestionsCubit extends Cubit<OsmSuggestionsState> {
  OsmSuggestionsCubit(this._locationSuggestionsUseCase) : super(const OsmSuggestionsState.loading());
  final LocationSuggestionsUseCase _locationSuggestionsUseCase;

  Future<List<PlaceEntity>> getSuggestions(String query) async {
    final result = await _locationSuggestionsUseCase(query);
    return result.fold(
      (l) {
        emit(OsmSuggestionsState.error(l.error));
        return [];
      },
      (r) {
        emit(OsmSuggestionsState.loaded(r));
        return r;
      },
    );
  }
}
