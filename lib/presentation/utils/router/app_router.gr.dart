// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AddExpensesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AddExpensesPage(),
      );
    },
    AuthenticationRoute.name: (routeData) {
      final args = routeData.argsAs<AuthenticationRouteArgs>(
          orElse: () => const AuthenticationRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AuthenticationPage(
          key: args.key,
          bloc: args.bloc,
        ),
      );
    },
    EditCurrentTripRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EditCurrentTripPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    NewTripRoute.name: (routeData) {
      final args = routeData.argsAs<NewTripRouteArgs>(
          orElse: () => const NewTripRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: NewTripPage(
          key: args.key,
          bloc: args.bloc,
        ),
      );
    },
    PlanExpensesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PlanExpensesPage(),
      );
    },
    PlanNewTripRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PlanNewTripPage(),
      );
    },
    PlannedTripsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PlannedTripsPage(),
      );
    },
    RegistrationRoute.name: (routeData) {
      final args = routeData.argsAs<RegistrationRouteArgs>(
          orElse: () => const RegistrationRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: RegistrationPage(
          key: args.key,
          bloc: args.bloc,
        ),
      );
    },
    RemoveCurrentTripRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RemoveCurrentTripPage(),
      );
    },
    ResumeOfTripRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ResumeOfTripPage(),
      );
    },
    SettingsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingsPage(),
      );
    },
    SummaryAfterClosingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SummaryAfterClosingPage(),
      );
    },
    TestM3Route.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TestM3Page(),
      );
    },
    ViewOfCurrentExpensesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ViewOfCurrentExpensesPage(),
      );
    },
    YourCurrentTripRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const YourCurrentTripPage(),
      );
    },
  };
}

/// generated route for
/// [AddExpensesPage]
class AddExpensesRoute extends PageRouteInfo<void> {
  const AddExpensesRoute({List<PageRouteInfo>? children})
      : super(
          AddExpensesRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddExpensesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [AuthenticationPage]
class AuthenticationRoute extends PageRouteInfo<AuthenticationRouteArgs> {
  AuthenticationRoute({
    Key? key,
    AuthenticationBloc? bloc,
    List<PageRouteInfo>? children,
  }) : super(
          AuthenticationRoute.name,
          args: AuthenticationRouteArgs(
            key: key,
            bloc: bloc,
          ),
          initialChildren: children,
        );

  static const String name = 'AuthenticationRoute';

  static const PageInfo<AuthenticationRouteArgs> page =
      PageInfo<AuthenticationRouteArgs>(name);
}

class AuthenticationRouteArgs {
  const AuthenticationRouteArgs({
    this.key,
    this.bloc,
  });

  final Key? key;

  final AuthenticationBloc? bloc;

  @override
  String toString() {
    return 'AuthenticationRouteArgs{key: $key, bloc: $bloc}';
  }
}

/// generated route for
/// [EditCurrentTripPage]
class EditCurrentTripRoute extends PageRouteInfo<void> {
  const EditCurrentTripRoute({List<PageRouteInfo>? children})
      : super(
          EditCurrentTripRoute.name,
          initialChildren: children,
        );

  static const String name = 'EditCurrentTripRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [NewTripPage]
class NewTripRoute extends PageRouteInfo<NewTripRouteArgs> {
  NewTripRoute({
    Key? key,
    NewTripBloc? bloc,
    List<PageRouteInfo>? children,
  }) : super(
          NewTripRoute.name,
          args: NewTripRouteArgs(
            key: key,
            bloc: bloc,
          ),
          initialChildren: children,
        );

  static const String name = 'NewTripRoute';

  static const PageInfo<NewTripRouteArgs> page =
      PageInfo<NewTripRouteArgs>(name);
}

class NewTripRouteArgs {
  const NewTripRouteArgs({
    this.key,
    this.bloc,
  });

  final Key? key;

  final NewTripBloc? bloc;

  @override
  String toString() {
    return 'NewTripRouteArgs{key: $key, bloc: $bloc}';
  }
}

/// generated route for
/// [PlanExpensesPage]
class PlanExpensesRoute extends PageRouteInfo<void> {
  const PlanExpensesRoute({List<PageRouteInfo>? children})
      : super(
          PlanExpensesRoute.name,
          initialChildren: children,
        );

  static const String name = 'PlanExpensesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PlanNewTripPage]
class PlanNewTripRoute extends PageRouteInfo<void> {
  const PlanNewTripRoute({List<PageRouteInfo>? children})
      : super(
          PlanNewTripRoute.name,
          initialChildren: children,
        );

  static const String name = 'PlanNewTripRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PlannedTripsPage]
class PlannedTripsRoute extends PageRouteInfo<void> {
  const PlannedTripsRoute({List<PageRouteInfo>? children})
      : super(
          PlannedTripsRoute.name,
          initialChildren: children,
        );

  static const String name = 'PlannedTripsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RegistrationPage]
class RegistrationRoute extends PageRouteInfo<RegistrationRouteArgs> {
  RegistrationRoute({
    Key? key,
    RegistrationBloc? bloc,
    List<PageRouteInfo>? children,
  }) : super(
          RegistrationRoute.name,
          args: RegistrationRouteArgs(
            key: key,
            bloc: bloc,
          ),
          initialChildren: children,
        );

  static const String name = 'RegistrationRoute';

  static const PageInfo<RegistrationRouteArgs> page =
      PageInfo<RegistrationRouteArgs>(name);
}

class RegistrationRouteArgs {
  const RegistrationRouteArgs({
    this.key,
    this.bloc,
  });

  final Key? key;

  final RegistrationBloc? bloc;

  @override
  String toString() {
    return 'RegistrationRouteArgs{key: $key, bloc: $bloc}';
  }
}

/// generated route for
/// [RemoveCurrentTripPage]
class RemoveCurrentTripRoute extends PageRouteInfo<void> {
  const RemoveCurrentTripRoute({List<PageRouteInfo>? children})
      : super(
          RemoveCurrentTripRoute.name,
          initialChildren: children,
        );

  static const String name = 'RemoveCurrentTripRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ResumeOfTripPage]
class ResumeOfTripRoute extends PageRouteInfo<void> {
  const ResumeOfTripRoute({List<PageRouteInfo>? children})
      : super(
          ResumeOfTripRoute.name,
          initialChildren: children,
        );

  static const String name = 'ResumeOfTripRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SettingsPage]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute({List<PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SummaryAfterClosingPage]
class SummaryAfterClosingRoute extends PageRouteInfo<void> {
  const SummaryAfterClosingRoute({List<PageRouteInfo>? children})
      : super(
          SummaryAfterClosingRoute.name,
          initialChildren: children,
        );

  static const String name = 'SummaryAfterClosingRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TestM3Page]
class TestM3Route extends PageRouteInfo<void> {
  const TestM3Route({List<PageRouteInfo>? children})
      : super(
          TestM3Route.name,
          initialChildren: children,
        );

  static const String name = 'TestM3Route';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ViewOfCurrentExpensesPage]
class ViewOfCurrentExpensesRoute extends PageRouteInfo<void> {
  const ViewOfCurrentExpensesRoute({List<PageRouteInfo>? children})
      : super(
          ViewOfCurrentExpensesRoute.name,
          initialChildren: children,
        );

  static const String name = 'ViewOfCurrentExpensesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [YourCurrentTripPage]
class YourCurrentTripRoute extends PageRouteInfo<void> {
  const YourCurrentTripRoute({List<PageRouteInfo>? children})
      : super(
          YourCurrentTripRoute.name,
          initialChildren: children,
        );

  static const String name = 'YourCurrentTripRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
