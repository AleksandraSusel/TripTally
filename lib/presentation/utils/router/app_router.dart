import 'package:auto_route/auto_route.dart';
import 'package:trip_tally/presentation/pages/home_page/home_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
)
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.custom(
        transitionsBuilder: TransitionsBuilders.slideBottom,
        durationInMilliseconds: 400,
      );

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page),
      ];
}
