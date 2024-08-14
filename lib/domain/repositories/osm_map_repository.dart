import 'package:dartz/dartz.dart';
import 'package:trip_tally/domain/entities/osm_map/place_entity.dart';
import 'package:trip_tally/domain/utils/failure.dart';

abstract class OsmMapRepository {
  Future<Either<Failure, List<PlaceEntity>>> getPlaces(String input);
}
