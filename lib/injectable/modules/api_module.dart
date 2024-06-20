import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'auth_interceptor.dart';

@module
abstract class ApiModule {
  @singleton
  Dio get client => Dio(BaseOptions(baseUrl: "http://192.168.8.151:4000/api/"))
    ..interceptors.addAll(
      [
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          responseHeader: false,
          error: true,
          compact: true,
          maxWidth: 120,
        ),
        AuthInterceptor(),
      ],
    );
}
