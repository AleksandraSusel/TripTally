import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_tally/data/dto/trips/create_trip_dto.dart';
import 'package:trip_tally/domain/data_source/trips_data_source.dart';
import 'package:trip_tally/domain/entities/trips/create_trip_entity.dart';
import 'package:trip_tally/domain/entities/trips/trip_entity.dart';
import 'package:trip_tally/domain/repositories/trips_repo.dart';
import 'package:trip_tally/domain/utils/exception.dart';
import 'package:trip_tally/domain/utils/failure.dart';
import 'package:trip_tally/domain/utils/success.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';

@Injectable(as: TripsRepo)
class TripsRepoImpl implements TripsRepo {
  TripsRepoImpl(this._dataSource);

  final TripsDataSource _dataSource;

  @override
  Future<Either<Failure, TripEntity>> createTrip(CreateTripEntity entity) async {
    try {
      final result = await _dataSource.createTrip(CreateTripDto.fromEntity(entity));

      return Right(TripEntity.fromDto(result));
    } on ApiException catch (e) {
      return Left(Failure(error: e.failure));
    } on Exception catch (_) {
      return const Left(Failure(error: Errors.unknownError));
    }
  }

  @override
  Future<Either<Failure, List<TripEntity>>> getAllUserTrips() async {
    try {
      final result = await _dataSource.getAllUserTrips();
      return Right(result.map(TripEntity.fromDto).toList());
    } on ApiException catch (e) {
      return Left(Failure(error: e.failure));
    }
  }

  @override
  Future<Either<Failure, Success>> deleteTrip(String id) async {
    try {
      final result = await _dataSource.deleteTrip(id);
      return Right(result);
    } on ApiException catch (e) {
      return Left(Failure(error: e.failure));
    }
  }

  @override
  Future<Either<Failure, TripEntity>> getTripById(String id) async {
    try {
      final dto = await _dataSource.getTripById(id);
      return Right(TripEntity.fromDto(dto));
    } on ApiException catch (e) {
      return Left(Failure(error: e.failure));
    }
  }

  @override
  Future<Either<Failure, Success>> updateTrip(String id, CreateTripEntity entity) async {
    try {
      final result = await _dataSource.updateTrip(id, CreateTripDto.fromEntity(entity));
      return Right(result);
    } on ApiException catch (e) {
      return Left(Failure(error: e.failure));
    }
  }
}
