import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_tally/domain/entities/user/login_entity.dart';
import 'package:trip_tally/domain/repositories/authentication_repo.dart';
import 'package:trip_tally/domain/utils/failure.dart';
import 'package:trip_tally/domain/utils/success.dart';

import '../utils/use_case.dart';

@injectable
class LoginUseCase implements UseCase<Success, LoginEntity> {
  const LoginUseCase(this._authenticationRepo);

  final AuthenticationRepo _authenticationRepo;

  @override
  Future<Either<Failure, Success>> call(LoginEntity loginEntity) async {
    return (await _authenticationRepo.login(loginEntity)).fold(
      (failure) => Left(failure),
      (success) => Right(success),
    );
  }
}
