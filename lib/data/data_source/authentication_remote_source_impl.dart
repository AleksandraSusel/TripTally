import 'package:injectable/injectable.dart';
import 'package:trip_tally/data/api/api_client.dart';
import 'package:trip_tally/data/dto/user/create_account_dto.dart';
import 'package:trip_tally/data/dto/user/login_dto.dart';
import 'package:trip_tally/domain/data_source/authentication_remote_source.dart';
import 'package:trip_tally/domain/utils/exception.dart';
import 'package:trip_tally/domain/utils/shared_prefs_utils.dart';
import 'package:trip_tally/domain/utils/success.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';

@Injectable(as: AuthenticationRemoteSource)
class AuthenticationRemoteSourceImpl implements AuthenticationRemoteSource {
  AuthenticationRemoteSourceImpl(
    this.client,
    this.prefs,
  );

  final ApiClient client;
  final SharedPrefsUtils prefs;

  @override
  Future<Success> login(LoginDto loginDto) async {
    try {
      final token = await client.login(loginDto);
      await prefs.saveToken(token);
      return const Success();
    } catch (e) {
      throw ApiException(Errors.somethingWentWrong);
    }
  }

  @override
  Future<Success> createAccount(CreateAccountDto createUserDto) async {
    try {
      final String token = await client.createAccount(createUserDto);
      await prefs.saveToken(token);
      return const Success();
    } catch (e) {
      throw ApiException(Errors.somethingWentWrong);
    }
  }

  @override
  Future<Success> signOut() async {
    if (await prefs.removeToken) {
      return const Success();
    } else {
      throw ApiException(Errors.somethingWentWrong);
    }
  }
}
