import 'package:firebase_auth/firebase_auth.dart';

import '../../data/dto/user/create_user_dto.dart';
import '../../data/dto/user/login_dto.dart';
import '../utils/success.dart';

abstract class AuthenticationRemoteSource {
  Future<UserCredential> createUser(CreateUserDto createUserDto);

  Future<Success> login(LoginDto loginDto);

  Future<Success> signOut();
}
