import 'package:dartz/dartz.dart';
import 'package:trip_tally/domain/entities/trips/create_trip_entity.dart';
import 'package:trip_tally/domain/entities/trips/trip_entity.dart';
import 'package:trip_tally/domain/utils/failure.dart';
import 'package:trip_tally/domain/utils/success.dart';

abstract class TripsRepo {
  Future<Either<Failure, TripEntity>> createTrip(CreateTripEntity entity);

  Future<Either<Failure, List<TripEntity>>> getAllUserTrips();

  Future<Either<Failure, TripEntity>> getTripById(String id);

  Future<Either<Failure, Success>> deleteTrip(String id);
}
