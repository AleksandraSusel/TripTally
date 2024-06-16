import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trip_tally/data/api/api_client.dart';
import 'package:trip_tally/data/dto/user/login_dto.dart';
import 'package:trip_tally/domain/data_source/authentication_remote_source.dart';
import 'package:trip_tally/domain/utils/shared_prefs_keys.dart';
import 'package:trip_tally/domain/utils/success.dart';

import '../../domain/utils/exception.dart';
import '../../presentation/utils/enums/errors.dart';
import '../dto/user/create_user_dto.dart';

@Injectable(as: AuthenticationRemoteSource)
class AuthenticationRemoteSourceImpl implements AuthenticationRemoteSource {
  AuthenticationRemoteSourceImpl(this.firebaseAuth, this.client, this.prefs);

  final FirebaseAuth firebaseAuth;
  final ApiClient client;
  final SharedPreferences prefs;

  String? get userId => firebaseAuth.currentUser?.uid;

  @override
  Future<Success> login(LoginDto loginDto) async {
    try {
      final token = await client.login(loginDto);
      await saveToken(token);
      return const Success();
    } catch (e) {
      throw ApiException(Errors.somethingWentWrong);
    }
  }

  Future<void> saveToken(String token) async {
    await prefs.setString(SharedPrefsKeys.token, token);
  }

  Future<String?> getToken(LoginDto dto) async {
    return prefs.getString('token');
  }

  @override
  Future<Success> createAccount(CreateUserDto createUserDto) async {
    try {
      final String token = await client.createAccount(createUserDto);
      await saveToken(token);
      return const Success();
    } catch (e) {
      throw ApiException(Errors.somethingWentWrong);
    }
  }

  @override
  Future<Success> signOut() async {
    try {
      await firebaseAuth.signOut();
      return const Success();
    } catch (e) {
      throw ApiException(Errors.somethingWentWrong);
    }
  }
}
