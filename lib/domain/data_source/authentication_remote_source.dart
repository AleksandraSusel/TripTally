import '../../data/dto/user/create_user_dto.dart';
import '../../data/dto/user/login_dto.dart';
import '../utils/success.dart';

abstract class AuthenticationRemoteSource {

  Future<Success> login(LoginDto loginDto);

  Future<Success> createAccount(CreateUserDto createUserDto);

  Future<Success> signOut();
}
