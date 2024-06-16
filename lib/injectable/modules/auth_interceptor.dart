import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../injectable.dart';

class AuthInterceptor extends Interceptor {
  AuthInterceptor();

  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final prefs = getIt<SharedPreferences>();
    final token = prefs.getString('token');

    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }

    return handler.next(options);
  }
}
