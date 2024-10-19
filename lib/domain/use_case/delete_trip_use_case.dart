import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_tally/domain/repositories/trips_repo.dart';
import 'package:trip_tally/domain/utils/failure.dart';
import 'package:trip_tally/domain/utils/success.dart';
import 'package:trip_tally/domain/utils/use_case.dart';

@injectable
class DeleteTripUseCase implements UseCase<Success, String> {
  DeleteTripUseCase(this._repo);

  final TripsRepo _repo;

  @override
  Future<Either<Failure, Success>> call(String id) async {
    return (await _repo.deleteTrip(id)).fold(Left.new, Right.new);
  }
}
