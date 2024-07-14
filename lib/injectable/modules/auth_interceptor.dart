import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trip_tally/domain/utils/shared_prefs_keys.dart';
import 'package:trip_tally/injectable/injectable.dart';

class AuthInterceptor extends Interceptor {
  AuthInterceptor();

  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final prefs = getIt<SharedPreferences>();
    final tokenJsonString = prefs.getString(SharedPrefsKeys.token);
    if (tokenJsonString != null) {
      final tokenJson = json.decode(tokenJsonString) as Map<String, dynamic>;
      final String? token = tokenJson['token'] as String?;
      if (token != null) {
        options.headers['Authorization'] = 'Bearer $token';
      }
    }

    return handler.next(options);
  }
}
