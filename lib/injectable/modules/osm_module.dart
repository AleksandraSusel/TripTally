import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:trip_tally/environment.config.dart';

@module
abstract class OsmModule {
  @singleton
  @Named('OsmDio')
  Dio get client => Dio(
        BaseOptions(
          // ignore: avoid_redundant_argument_values
          baseUrl: EnvConfig.osmUrl,
        ),
      )..interceptors.add(
          PrettyDioLogger(
            requestHeader: true,
            requestBody: true,
            maxWidth: 120,
          ),
        );
}
