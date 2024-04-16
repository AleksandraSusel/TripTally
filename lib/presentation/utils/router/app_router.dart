import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:trip_tally/presentation/pages/home_page/home_page.dart';
import 'package:trip_tally/presentation/pages/login_page/login_page.dart';
import 'package:trip_tally/presentation/pages/new_trip_page/new_trip_page.dart';
import 'package:trip_tally/presentation/pages/registration_page/registration_page.dart';

import '../../pages/login_page/bloc/login_bloc.dart';
import '../../pages/registration_page/bloc/registration_bloc.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
)
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.custom(
        transitionsBuilder: TransitionsBuilders.slideLeft,
        durationInMilliseconds: 400,
      );

  @override
  List<AutoRoute> get routes =>
      [
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: LoginRoute.page),
        AutoRoute(page: RegistrationRoute.page),
        AutoRoute(page: NewTripRoute.page, initial: true),
      ];
}
