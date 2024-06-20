import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@injectable
class SharedPrefsUtils {
  const SharedPrefsUtils(this.prefs);

  final SharedPreferences prefs;

  Future<void> saveToken(String token) async => prefs.setString(SharedPrefsKeys.token, token);

  Future<bool> get removeToken async => prefs.remove(SharedPrefsKeys.token);

  String? get getToken => prefs.getString(SharedPrefsKeys.token);
}

class SharedPrefsKeys {
  static const String token = 'token';
}
