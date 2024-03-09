import 'package:firebase_auth/firebase_auth.dart';

import '../../data/dto/user/create_user_dto.dart';

abstract class AuthenticationRemoteSource {
  Future<UserCredential> createUser(CreateUserDto createUserDto);
}
