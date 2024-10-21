import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_tally/domain/entities/trips/trip_entity.dart';
import 'package:trip_tally/domain/repositories/trips_repo.dart';
import 'package:trip_tally/domain/utils/failure.dart';
import 'package:trip_tally/domain/utils/use_case.dart';

@injectable
class GetTripUseCase implements UseCase<TripEntity, String> {
  GetTripUseCase(this._repo);

  final TripsRepo _repo;

  @override
  Future<Either<Failure, TripEntity>> call(String id) async {
    return (await _repo.getTripById(id)).fold(
      Left.new,
      Right.new,
    );
  }
}
