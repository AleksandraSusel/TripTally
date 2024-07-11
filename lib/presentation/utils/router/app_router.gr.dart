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
      final args = routeData.argsAs<AddExpensesRouteArgs>(orElse: () => const AddExpensesRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AddExpensesPage(
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
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(orElse: () => const LoginRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: LoginPage(
          key: args.key,
          bloc: args.bloc,
        ),
      );
    },
    NewTripRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const NewTripPage(),
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
      final args = routeData.argsAs<RegistrationRouteArgs>(orElse: () => const RegistrationRouteArgs());
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
class AddExpensesRoute extends PageRouteInfo<AddExpensesRouteArgs> {
  AddExpensesRoute({
    Key? key,
    AddExpensesBloc? bloc,
    List<PageRouteInfo>? children,
  }) : super(
          AddExpensesRoute.name,
          args: AddExpensesRouteArgs(
            key: key,
            bloc: bloc,
          ),
          initialChildren: children,
        );

  static const String name = 'AddExpensesRoute';

  static const PageInfo<AddExpensesRouteArgs> page = PageInfo<AddExpensesRouteArgs>(name);
}

class AddExpensesRouteArgs {
  const AddExpensesRouteArgs({
    this.key,
    this.bloc,
  });

  final Key? key;

  final AddExpensesBloc? bloc;

  @override
  String toString() {
    return 'AddExpensesRouteArgs{key: $key, bloc: $bloc}';
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
/// [LoginPage]
class LoginRoute extends PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    Key? key,
    LoginBloc? bloc,
    List<PageRouteInfo>? children,
  }) : super(
          LoginRoute.name,
          args: LoginRouteArgs(
            key: key,
            bloc: bloc,
          ),
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<LoginRouteArgs> page = PageInfo<LoginRouteArgs>(name);
}

class LoginRouteArgs {
  const LoginRouteArgs({
    this.key,
    this.bloc,
  });

  final Key? key;

  final LoginBloc? bloc;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key, bloc: $bloc}';
  }
}

/// generated route for
/// [NewTripPage]
class NewTripRoute extends PageRouteInfo<void> {
  const NewTripRoute({List<PageRouteInfo>? children})
      : super(
          NewTripRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewTripRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
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

  static const PageInfo<RegistrationRouteArgs> page = PageInfo<RegistrationRouteArgs>(name);
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
