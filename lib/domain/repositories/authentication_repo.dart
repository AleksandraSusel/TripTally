import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:trip_tally/domain/entities/user/create_user_entity.dart';
import 'package:trip_tally/domain/entities/user/login_entity.dart';
import 'package:trip_tally/domain/utils/failure.dart';
import 'package:trip_tally/domain/utils/success.dart';

abstract class AuthenticationRepo {
  Future<Either<Failure, UserCredential>> createUser(
    CreateUserEntity entity,
  );

  Future<Either<Failure, Success>> login(
    LoginEntity entity,
  );

  Future<Either<Failure, Success>> signOut();
}
