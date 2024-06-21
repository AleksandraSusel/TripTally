import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:trip_tally/presentation/pages/add_expenses_page/add_expenses_page.dart';
import 'package:trip_tally/presentation/pages/edit_current_trip_page/edit_current_trip_page.dart';
import 'package:trip_tally/presentation/pages/home_page/home_page.dart';
import 'package:trip_tally/presentation/pages/login_page/bloc/login_bloc.dart';
import 'package:trip_tally/presentation/pages/login_page/login_page.dart';
import 'package:trip_tally/presentation/pages/new_trip_page/new_trip_page.dart';
import 'package:trip_tally/presentation/pages/plan_expenses_page/plan_expenses_page.dart';
import 'package:trip_tally/presentation/pages/plan_new_trip_page/plan_new_trip_page.dart';
import 'package:trip_tally/presentation/pages/planned_trips_page/planned_trips_page.dart';
import 'package:trip_tally/presentation/pages/registration_page/bloc/registration_bloc.dart';
import 'package:trip_tally/presentation/pages/registration_page/registration_page.dart';
import 'package:trip_tally/presentation/pages/resume_of_trip_page/resume_of_trip_page.dart';
import 'package:trip_tally/presentation/pages/settings_page/settings_page.dart';
import 'package:trip_tally/presentation/pages/view_of_current_expenses_page/view_of_current_expenses_page.dart';

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
        AutoRoute(page: NewTripRoute.page),
        AutoRoute(page: SettingsRoute.page),
        AutoRoute(page: NewTripRoute.page),
        AutoRoute(page: NewTripRoute.page),
        AutoRoute(page: PlanNewTripRoute.page),
        AutoRoute(page: PlanExpensesRoute.page),
        AutoRoute(page: NewTripRoute.page),
        AutoRoute(page: ResumeOfTripRoute.page),
        AutoRoute(page: PlannedTripsRoute.page),
        AutoRoute(page: AddExpensesRoute.page),
        AutoRoute(
          page: ViewOfCurrentExpensesRoute.page,
        ),
        AutoRoute(page: EditCurrentTripRoute.page),
      ];
}
