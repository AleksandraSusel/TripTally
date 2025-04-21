import 'package:equatable/equatable.dart';
import 'package:trip_tally/domain/entities/osm_map/place_entity.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';

sealed class OsmSuggestionsState extends Equatable {
  const OsmSuggestionsState();

  @override
  List<Object?> get props => [];
}

class Loaded extends OsmSuggestionsState {
  const Loaded(this.suggestions);

  final List<PlaceEntity> suggestions;

  @override
  List<Object?> get props => [suggestions];
}

class Loading extends OsmSuggestionsState {}

class Error extends OsmSuggestionsState {
  const Error(this.error);

  final Errors error;

  @override
  List<Object?> get props => [error];
}
