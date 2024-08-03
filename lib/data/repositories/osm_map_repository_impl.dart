import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_tally/domain/data_source/osm_map_data_source.dart';
import 'package:trip_tally/domain/entities/osm_map/place_entity.dart';
import 'package:trip_tally/domain/repositories/osm_map_repository.dart';
import 'package:trip_tally/domain/utils/exception.dart';
import 'package:trip_tally/domain/utils/failure.dart';

@Injectable(as: OsmMapRepository)
class OsmMapRepositoryImpl extends OsmMapRepository {
  OsmMapRepositoryImpl(this._osmMapDataSource);

  final OsmMapDataSource _osmMapDataSource;

  @override
  Future<Either<Failure, List<PlaceEntity>>> getPlaces(String input) async {
    try {
      return _osmMapDataSource.getPlaces(input).then(
            (dtoList) => Right(
              dtoList
                  .map(
                    (featureDto) => PlaceEntity.fromDto(
                      featureDto.properties,
                      featureDto.geometry,
                    ),
                  )
                  .toList(),
            ),
          );
    } on ApiException catch (e) {
      return Left(Failure(error: e.failure));
    }
  }
}
