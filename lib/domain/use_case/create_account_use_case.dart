import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../entities/user/create_user_entity.dart';
import '../repositories/authentication_repo.dart';
import '../utils/failure.dart';
import '../utils/success.dart';
import '../utils/use_case.dart';

@injectable
class CreateAccountUseCase implements UseCase<Success, CreateUserEntity> {
  const CreateAccountUseCase(this._authenticationRepo);

  final AuthenticationRepo _authenticationRepo;

  @override
  Future<Either<Failure, Success>> call(CreateUserEntity entity) async {
    return (await _authenticationRepo.createAccount(entity)).fold(
      (failure) => Left(failure),
      (success) => Right(success),
    );
  }
}
