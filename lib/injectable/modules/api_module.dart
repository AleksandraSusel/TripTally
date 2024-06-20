import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

@module
abstract class ApiModule {
  @singleton
  Dio get client => Dio()
    ..interceptors.addAll(
      [
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          maxWidth: 120,
        ),
      ],
    );
}
