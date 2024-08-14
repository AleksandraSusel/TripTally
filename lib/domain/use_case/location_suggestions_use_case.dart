import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_tally/domain/entities/osm_map/place_entity.dart';
import 'package:trip_tally/domain/repositories/osm_map_repository.dart';
import 'package:trip_tally/domain/utils/failure.dart';
import 'package:trip_tally/domain/utils/use_case.dart';

@injectable
class LocationSuggestionsUseCase implements UseCase<List<PlaceEntity>, String> {
  const LocationSuggestionsUseCase(this._osmMapRepository);

  final OsmMapRepository _osmMapRepository;

  @override
  Future<Either<Failure, List<PlaceEntity>>> call(String input) async {
    final result = await _osmMapRepository.getPlaces(input);

    return result.fold(
      Left.new,
      (r) {
        final Set<String> displayNameSet = {};
        final List<PlaceEntity> uniquePlacesList = [];

        for (final place in r) {
          if (displayNameSet.add(place.displayName)) {
            uniquePlacesList.add(place);
          }
        }

        return Right<Failure, List<PlaceEntity>>(uniquePlacesList);
      },
    );
  }
}
