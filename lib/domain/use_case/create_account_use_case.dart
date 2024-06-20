import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:trip_tally/domain/entities/user/create_account_entity.dart';
import 'package:trip_tally/domain/repositories/authentication_repo.dart';
import 'package:trip_tally/domain/utils/failure.dart';
import 'package:trip_tally/domain/utils/success.dart';
import 'package:trip_tally/domain/utils/use_case.dart';

@injectable
class CreateAccountUseCase implements UseCase<Success, CreateAccountEntity> {
  const CreateAccountUseCase(this._authenticationRepo);

  final AuthenticationRepo _authenticationRepo;

  @override
  Future<Either<Failure, Success>> call(CreateAccountEntity entity) async {
    return (await _authenticationRepo.createAccount(entity)).fold(
      Left.new,
      Right.new,
    );
  }
}
