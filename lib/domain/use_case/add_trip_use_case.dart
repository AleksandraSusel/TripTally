import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_tally/domain/entities/add_trip_entity/add_trip_entity.dart';
import 'package:trip_tally/domain/repositories/trips_repo.dart';
import 'package:trip_tally/domain/utils/failure.dart';
import 'package:trip_tally/domain/utils/success.dart';
import 'package:trip_tally/domain/utils/use_case.dart';

@injectable
class AddTripUseCase implements UseCase<Success, AddTripEntity> {
  AddTripUseCase(this._repo);

  final TripsRepo _repo;

  @override
  Future<Either<Failure, Success>> call(AddTripEntity entity) async {
    return (await _repo.newTrip(entity)).fold(
      Left.new,
      (r) => const Right(Success()),
    );
  }
}
