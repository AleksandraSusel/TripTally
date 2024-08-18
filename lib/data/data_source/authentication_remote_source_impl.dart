import 'package:injectable/injectable.dart';
import 'package:trip_tally/data/api/api_client.dart';
import 'package:trip_tally/data/dto/user/create_account_dto.dart';
import 'package:trip_tally/data/dto/user/login_dto.dart';
import 'package:trip_tally/data/dto/user/update_user_profile_dto.dart';
import 'package:trip_tally/domain/data_source/authentication_remote_source.dart';
import 'package:trip_tally/domain/utils/exception.dart';
import 'package:trip_tally/domain/utils/shared_prefs_utils.dart';
import 'package:trip_tally/domain/utils/success.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';

@Injectable(as: AuthenticationRemoteSource)
class AuthenticationRemoteSourceImpl implements AuthenticationRemoteSource {
  AuthenticationRemoteSourceImpl(this._client, this._prefs);

  final ApiClient _client;
  final SharedPrefsUtils _prefs;

  @override
  Future<Success> login(LoginDto loginDto) async {
    try {
      final token = await _client.login(loginDto);
      await _prefs.saveToken(token);
      return const Success();
    } catch (e) {
      throw ApiException(Errors.somethingWentWrong);
    }
  }

  @override
  Future<Success> createAccount(CreateAccountDto createUserDto) async {
    try {
      final String token = await _client.createAccount(createUserDto);
      await _prefs.saveToken(token);
      return const Success();
    } catch (e) {
      throw ApiException(Errors.somethingWentWrong);
    }
  }

  @override
  Future<Success> signOut() async {
    if (await _prefs.removeToken) {
      return const Success();
    } else {
      throw ApiException(Errors.somethingWentWrong);
    }
  }

  @override
  Future<Success> updateUserProfile(UpdateUserProfileDto dto) async {
    try {
      await _client.updateUserProfile(dto);
      return const Success();
    } catch (e) {
      throw ApiException(Errors.somethingWentWrong);
    }
  }
}
