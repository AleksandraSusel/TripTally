import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_tally/data/dto/trips/create_trip_dto.dart';
import 'package:trip_tally/domain/data_source/trips_data_source.dart';
import 'package:trip_tally/domain/entities/trips/create_trip_entity.dart';
import 'package:trip_tally/domain/entities/trips/trip_entity.dart';
import 'package:trip_tally/domain/repositories/trips_repo.dart';
import 'package:trip_tally/domain/utils/failure.dart';
import 'package:trip_tally/domain/utils/success.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';

@Injectable(as: TripsRepo)
class TripsRepoImpl implements TripsRepo {
  TripsRepoImpl(this._dataSource);

  final TripsDataSource _dataSource;

  @override
  Future<Either<Failure, Success>> createTrip(CreateTripEntity entity) async {
    try {
      await _dataSource.createTrip(CreateTripDto.fromEntity(entity));
      return const Right(Success());
    } catch (e) {
      return const Left(Failure(error: Errors.somethingWentWrong));
    }
  }

  @override
  Future<Either<Failure, List<TripEntity>>> getAllUserTrips() async {
    try {
      final result = await _dataSource.getAllUserTrips();
      return Right(result.map(TripEntity.fromDto).toList());
    } catch (e) {
      return const Left(Failure(error: Errors.somethingWentWrong));
    }
  }
}
