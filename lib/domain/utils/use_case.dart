import 'package:dartz/dartz.dart';

import 'package:trip_tally/domain/utils/failure.dart';

abstract class UseCase<T, S> {
  Future<Either<Failure, T>> call(S param);
}

abstract class UseCaseSimple<T, S> {
  Future<T> call(S params);
}

abstract class SimpleNoParamsUseCase<T> {
  Future<T> call();
}

abstract class NoParamsUseCaseWithFailure<T> {
  Future<Either<Failure, T>> call();
}

abstract class StreamUseCase<T> {
  Stream<T> call();
}
