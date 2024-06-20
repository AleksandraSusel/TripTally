import 'package:dartz/dartz.dart';
import 'package:trip_tally/domain/entities/user/create_account_entity.dart';
import 'package:trip_tally/domain/entities/user/login_entity.dart';
import 'package:trip_tally/domain/utils/failure.dart';
import 'package:trip_tally/domain/utils/success.dart';

abstract class AuthenticationRepo {
  Future<Either<Failure, Success>> login(
    LoginEntity entity,
  );

  Future<Either<Failure, Success>> createAccount(
    CreateAccountEntity entity,
  );

  Future<Either<Failure, Success>> signOut();
}
