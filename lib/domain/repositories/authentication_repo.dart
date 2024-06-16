import 'package:dartz/dartz.dart';
import 'package:trip_tally/domain/entities/user/login_entity.dart';

import '../entities/user/create_user_entity.dart';
import '../utils/failure.dart';
import '../utils/success.dart';

abstract class AuthenticationRepo {
  Future<Either<Failure, Success>> login(
    LoginEntity entity,
  );

  Future<Either<Failure, Success>> createAccount(
    CreateUserEntity entity,
  );

  Future<Either<Failure, Success>> signOut();
}
