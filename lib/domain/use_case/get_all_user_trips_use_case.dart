import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_tally/domain/entities/trips/trip_entity.dart';
import 'package:trip_tally/domain/repositories/trips_repo.dart';
import 'package:trip_tally/domain/utils/failure.dart';
import 'package:trip_tally/domain/utils/use_case.dart';

@injectable
class GetAllUserTripsUseCase implements NoParamsUseCaseWithFailure<List<TripEntity>> {
  GetAllUserTripsUseCase(this._repo);

  final TripsRepo _repo;

  @override
  Future<Either<Failure, List<TripEntity>>> call() async {
    return (await _repo.getAllUserTrips()).fold(
      Left.new,
      Right.new,
    );
  }
}
