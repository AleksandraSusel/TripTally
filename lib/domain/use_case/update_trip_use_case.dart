import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_tally/domain/entities/trips/create_trip_entity.dart';
import 'package:trip_tally/domain/repositories/trips_repo.dart';
import 'package:trip_tally/domain/utils/failure.dart';
import 'package:trip_tally/domain/utils/success.dart';
import 'package:trip_tally/domain/utils/use_case.dart';

@injectable
class UpdateTripUseCase implements UseCase<Success, UpdateTripUseCaseParams> {
  UpdateTripUseCase(this._repo);

  final TripsRepo _repo;

  @override
  Future<Either<Failure, Success>> call(UpdateTripUseCaseParams params) async {
    return (await _repo.updateTrip(params.id, params.entity)).fold(Left.new, Right.new);
  }
}

@immutable
class UpdateTripUseCaseParams {
  const UpdateTripUseCaseParams({
    required this.id,
    required this.entity,
  });

  final String id;
  final CreateTripEntity entity;
}
