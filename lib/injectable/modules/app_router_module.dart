import 'package:injectable/injectable.dart';

import '../../presentation/utils/router/app_router.dart';

@module
abstract class AppRouterModule {
  @lazySingleton
  AppRouter get instance => AppRouter();
}
