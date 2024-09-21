import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/pages/authentication_page/authentication_page.dart';
import 'package:trip_tally/presentation/pages/authentication_page/bloc/authentication_bloc.dart';
import 'package:trip_tally/presentation/pages/create_expenses_page/create_expenses_page.dart';
import 'package:trip_tally/presentation/pages/create_trip_page/bloc/create_trip_bloc.dart';
import 'package:trip_tally/presentation/pages/create_trip_page/create_trip_basic_info_page.dart';
import 'package:trip_tally/presentation/pages/home_page/home_page.dart';
import 'package:trip_tally/presentation/pages/planned_trips_m3_page/planned_trips_m3_page.dart';
import 'package:trip_tally/presentation/pages/test_m3_page/test_m3_page.dart';
import 'package:trip_tally/presentation/pages/trips_history_page/trips_history_page.dart';
import 'package:trip_tally/presentation/pages/welcome_page/bloc/update_user_profile_bloc.dart';
import 'package:trip_tally/presentation/pages/welcome_page/welcome_page.dart';
import 'package:trip_tally/presentation/utils/permissions/bloc/permissions_bloc.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/maps/osm_bloc/osm_suggestions_cubit.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
)
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.custom(
        transitionsBuilder: TransitionsBuilders.fadeIn,
        durationInMilliseconds: 400,
      );

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: AuthenticationRoute.page, initial: true),
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: WelcomeRoute.page),
        AutoRoute(page: CreateTripBasicInfoRoute.page),
        AutoRoute(page: TestM3Route.page),
        AutoRoute(page: TripsHistoryRoute.page),
        AutoRoute(page: PlannedTripsM3Route.page),
        AutoRoute(page: CreateExpensesRoute.page),
      ];
}
