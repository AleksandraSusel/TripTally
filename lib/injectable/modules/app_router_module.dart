import 'package:injectable/injectable.dart';

import 'package:trip_tally/presentation/utils/router/app_router.dart';

@module
abstract class AppRouterModule {
  @lazySingleton
  AppRouter get instance => AppRouter();
}
