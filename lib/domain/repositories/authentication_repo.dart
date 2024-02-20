import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../entities/user/create_user_entity.dart';
import '../utils/failure.dart';

abstract class AuthenticationRepo {
  Future<Either<Failure, UserCredential>> createUser(
    CreateUserEntity entity,
  );
}
