import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_tally/domain/entities/trips/create_trip_entity.dart';
import 'package:trip_tally/domain/entities/trips/trip_entity.dart';
import 'package:trip_tally/domain/repositories/trips_repo.dart';
import 'package:trip_tally/domain/utils/failure.dart';
import 'package:trip_tally/domain/utils/use_case.dart';

@injectable
class CreateTripUseCase implements UseCase<TripEntity, CreateTripEntity> {
  CreateTripUseCase(this._repo);

  final TripsRepo _repo;

  @override
  Future<Either<Failure, TripEntity>> call(CreateTripEntity entity) async {
    return (await _repo.createTrip(entity)).fold(Left.new, Right.new);
  }
}
