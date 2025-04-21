import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_tally/domain/entities/osm_map/place_entity.dart';
import 'package:trip_tally/domain/use_case/location_suggestions_use_case.dart';
import 'package:trip_tally/presentation/utils/basic_state.dart';

@injectable
class OsmSuggestionsCubit extends Cubit<BasicState<List<PlaceEntity>>> {
  OsmSuggestionsCubit(this._locationSuggestionsUseCase) : super(const LoadingState());
  final LocationSuggestionsUseCase _locationSuggestionsUseCase;

  Future<List<PlaceEntity>> getSuggestions(String query) async {
    final result = await _locationSuggestionsUseCase(query);
    return result.fold(
      (l) {
        emit(FailureState(l.error));
        return [];
      },
      (r) {
        emit(LoadedState(data: r));
        return r;
      },
    );
  }
}
