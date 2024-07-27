import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:trip_tally/presentation/pages/add_expenses_page/add_expenses_page.dart';
import 'package:trip_tally/presentation/pages/authentication_page/authentication_page.dart';
import 'package:trip_tally/presentation/pages/authentication_page/bloc/authentication_bloc.dart';
import 'package:trip_tally/presentation/pages/create_trip_page/create_trip_basic_info_page.dart';
import 'package:trip_tally/presentation/pages/edit_current_trip_page/edit_current_trip_page.dart';
import 'package:trip_tally/presentation/pages/home_page/home_page.dart';
import 'package:trip_tally/presentation/pages/manage_your_trips_page/manage_your_trips_page.dart';
import 'package:trip_tally/presentation/pages/new_trip_page/bloc/new_trip_bloc.dart';
import 'package:trip_tally/presentation/pages/new_trip_page/new_trip_page.dart';
import 'package:trip_tally/presentation/pages/plan_expenses_page/plan_expenses_page.dart';
import 'package:trip_tally/presentation/pages/plan_new_trip_page/plan_new_trip_page.dart';
import 'package:trip_tally/presentation/pages/planned_trips_page/planned_trips_page.dart';
import 'package:trip_tally/presentation/pages/registration_page/bloc/registration_bloc.dart';
import 'package:trip_tally/presentation/pages/registration_page/registration_page.dart';
import 'package:trip_tally/presentation/pages/remove_current_trip_page/remove_current_trip_page.dart';
import 'package:trip_tally/presentation/pages/resume_of_trip_page/resume_of_trip_page.dart';
import 'package:trip_tally/presentation/pages/settings_page/settings_page.dart';
import 'package:trip_tally/presentation/pages/summary_after_closing_page/summary_after_closing_page.dart';
import 'package:trip_tally/presentation/pages/test_m3_page/test_m3_page.dart';
import 'package:trip_tally/presentation/pages/view_of_current_expenses_page/view_of_current_expenses_page.dart';
import 'package:trip_tally/presentation/pages/welcome_page/welcome_page.dart';
import 'package:trip_tally/presentation/pages/your_current_trip_page/your_current_trip_page.dart';
import 'package:trip_tally/presentation/utils/permissions/bloc/permissions_bloc.dart';

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
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: AuthenticationRoute.page),
        AutoRoute(page: WelcomeRoute.page, initial: true),
        AutoRoute(page: RegistrationRoute.page),
        AutoRoute(page: NewTripRoute.page),
        AutoRoute(page: SettingsRoute.page),
        AutoRoute(page: PlanNewTripRoute.page),
        AutoRoute(page: PlanExpensesRoute.page),
        AutoRoute(page: ResumeOfTripRoute.page),
        AutoRoute(page: PlannedTripsRoute.page),
        AutoRoute(page: SummaryAfterClosingRoute.page),
        AutoRoute(page: AddExpensesRoute.page),
        AutoRoute(page: ViewOfCurrentExpensesRoute.page),
        AutoRoute(page: EditCurrentTripRoute.page),
        AutoRoute(page: RemoveCurrentTripRoute.page),
        AutoRoute(page: YourCurrentTripRoute.page),
        AutoRoute(page: ManageYourTripsRoute.page),
        AutoRoute(page: CreateTripBasicInfoRoute.page, initial: true),
        AutoRoute(page: TestM3Route.page),
      ];
}
