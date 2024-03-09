import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_tally/domain/entities/user/create_user_entity.dart';
import 'package:trip_tally/domain/utils/success.dart';
import 'package:trip_tally/domain/utils/use_case.dart';

import '../repositories/authentication_repo.dart';
import '../utils/failure.dart';

@injectable
class CreateUserUseCase implements UseCase<Success, CreateUserEntity> {
  const CreateUserUseCase(this._authenticationRepo);

  final AuthenticationRepo _authenticationRepo;

  @override
  Future<Either<Failure, Success>> call(CreateUserEntity entity) async {
    return (await _authenticationRepo.createUser(entity)).fold(
      (failure) => Left(failure),
      (r) => const Right(Success()),
    );
  }
}
