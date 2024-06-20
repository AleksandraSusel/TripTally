import 'package:trip_tally/data/dto/user/create_account_dto.dart';
import 'package:trip_tally/data/dto/user/login_dto.dart';
import 'package:trip_tally/domain/utils/success.dart';

abstract class AuthenticationRemoteSource {

  Future<Success> login(LoginDto loginDto);

  Future<Success> createAccount(CreateAccountDto createUserDto);

  Future<Success> signOut();
}
