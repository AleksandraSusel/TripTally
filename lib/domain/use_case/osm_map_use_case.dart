import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_tally/domain/entities/osm_map/place_entity.dart';
import 'package:trip_tally/domain/repositories/osm_map_repository.dart';
import 'package:trip_tally/domain/utils/failure.dart';
import 'package:trip_tally/domain/utils/use_case.dart';

@injectable
class OsmMapUseCase implements UseCase<List<PlaceEntity>, String> {
  const OsmMapUseCase(this._osmMapRepository);

  final OsmMapRepository _osmMapRepository;

  @override
  Future<Either<Failure, List<PlaceEntity>>> call(String input) async {
    return (await _osmMapRepository.getPlaces(input)).fold(
      Left.new,
      Right.new,
    );
  }
}
