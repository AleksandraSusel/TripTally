import 'package:dartz/dartz.dart';
import 'package:trip_tally/domain/entities/add_trip_entity/add_trip_entity.dart';
import 'package:trip_tally/domain/utils/failure.dart';
import 'package:trip_tally/domain/utils/success.dart';

abstract class TripsRepo {
  Future<Either<Failure, Success>> newTrip(AddTripEntity entity);
}
