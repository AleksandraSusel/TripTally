import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:trip_tally/environment.config.dart';
import 'package:trip_tally/injectable/modules/auth_interceptor.dart';

@module
abstract class ApiModule {
  @singleton
  Dio get client => Dio(
        BaseOptions(
          /// Ignore the baseUrl warning
          // ignore: avoid_redundant_argument_values
          baseUrl: EnvConfig.apiUrl,
          headers: {
            'Content-Type': 'application/json',
          },
        ),
      )..interceptors.addAll(
          [
            PrettyDioLogger(
              requestHeader: true,
              requestBody: true,
              maxWidth: 120,
            ),
            AuthInterceptor(),
          ],
        );
}
