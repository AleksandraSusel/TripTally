import 'package:dartz/dartz.dart';
import 'package:trip_tally/domain/entities/trips/create_trip_entity.dart';
import 'package:trip_tally/domain/utils/failure.dart';
import 'package:trip_tally/domain/utils/success.dart';

abstract class TripsRepo {
  Future<Either<Failure, Success>> createTrip(CreateTripEntity entity);
}
