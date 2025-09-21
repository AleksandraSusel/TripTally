import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_tally/domain/entities/trips/trip_entity.dart';
import 'package:trip_tally/domain/repositories/trips_repo.dart';
import 'package:trip_tally/domain/utils/failure.dart';
import 'package:trip_tally/domain/utils/use_case.dart';

@injectable
class GetTodayTripsUseCase implements NoParamsUseCaseWithFailure<TripEntity?> {
  GetTodayTripsUseCase(this._repo);

  final TripsRepo _repo;

  @override
  Future<Either<Failure, TripEntity?>> call() async {
    return (await _repo.getTodayTrips()).fold(
      Left.new,
      Right.new,
    );
  }
}
