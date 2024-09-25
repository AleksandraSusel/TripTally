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
    AuthenticationRoute.name: (routeData) {
      final args = routeData.argsAs<AuthenticationRouteArgs>(orElse: () => const AuthenticationRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AuthenticationPage(
          key: args.key,
          bloc: args.bloc,
        ),
      );
    },
    CreateExpensesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CreateExpensesPage(),
      );
    },
    CreateTripBasicInfoRoute.name: (routeData) {
      final args = routeData.argsAs<CreateTripBasicInfoRouteArgs>(orElse: () => const CreateTripBasicInfoRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CreateTripBasicInfoPage(
          bloc: args.bloc,
          key: args.key,
          cubit: args.cubit,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    PlannedTripsM3Route.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PlannedTripsM3Page(),
      );
    },
    ProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfilePage(),
      );
    },
    SettingsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingsPage(),
      );
    },
    TestM3Route.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TestM3Page(),
      );
    },
    TripsHistoryRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TripsHistoryPage(),
      );
    },
    WelcomeRoute.name: (routeData) {
      final args = routeData.argsAs<WelcomeRouteArgs>(orElse: () => const WelcomeRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WelcomePage(
          key: args.key,
          permissionsBloc: args.permissionsBloc,
          updateUserProfileBloc: args.updateUserProfileBloc,
        ),
      );
    },
  };
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

  static const PageInfo<AuthenticationRouteArgs> page = PageInfo<AuthenticationRouteArgs>(name);
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
/// [CreateExpensesPage]
class CreateExpensesRoute extends PageRouteInfo<void> {
  const CreateExpensesRoute({List<PageRouteInfo>? children})
      : super(
          CreateExpensesRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreateExpensesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CreateTripBasicInfoPage]
class CreateTripBasicInfoRoute extends PageRouteInfo<CreateTripBasicInfoRouteArgs> {
  CreateTripBasicInfoRoute({
    CreateTripBloc? bloc,
    Key? key,
    OsmSuggestionsCubit? cubit,
    List<PageRouteInfo>? children,
  }) : super(
          CreateTripBasicInfoRoute.name,
          args: CreateTripBasicInfoRouteArgs(
            bloc: bloc,
            key: key,
            cubit: cubit,
          ),
          initialChildren: children,
        );

  static const String name = 'CreateTripBasicInfoRoute';

  static const PageInfo<CreateTripBasicInfoRouteArgs> page = PageInfo<CreateTripBasicInfoRouteArgs>(name);
}

class CreateTripBasicInfoRouteArgs {
  const CreateTripBasicInfoRouteArgs({
    this.bloc,
    this.key,
    this.cubit,
  });

  final CreateTripBloc? bloc;

  final Key? key;

  final OsmSuggestionsCubit? cubit;

  @override
  String toString() {
    return 'CreateTripBasicInfoRouteArgs{bloc: $bloc, key: $key, cubit: $cubit}';
  }
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
/// [PlannedTripsM3Page]
class PlannedTripsM3Route extends PageRouteInfo<void> {
  const PlannedTripsM3Route({List<PageRouteInfo>? children})
      : super(
          PlannedTripsM3Route.name,
          initialChildren: children,
        );

  static const String name = 'PlannedTripsM3Route';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfilePage]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

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
/// [TripsHistoryPage]
class TripsHistoryRoute extends PageRouteInfo<void> {
  const TripsHistoryRoute({List<PageRouteInfo>? children})
      : super(
          TripsHistoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'TripsHistoryRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [WelcomePage]
class WelcomeRoute extends PageRouteInfo<WelcomeRouteArgs> {
  WelcomeRoute({
    Key? key,
    PermissionsBloc? permissionsBloc,
    UpdateUserProfileBloc? updateUserProfileBloc,
    List<PageRouteInfo>? children,
  }) : super(
          WelcomeRoute.name,
          args: WelcomeRouteArgs(
            key: key,
            permissionsBloc: permissionsBloc,
            updateUserProfileBloc: updateUserProfileBloc,
          ),
          initialChildren: children,
        );

  static const String name = 'WelcomeRoute';

  static const PageInfo<WelcomeRouteArgs> page = PageInfo<WelcomeRouteArgs>(name);
}

class WelcomeRouteArgs {
  const WelcomeRouteArgs({
    this.key,
    this.permissionsBloc,
    this.updateUserProfileBloc,
  });

  final Key? key;

  final PermissionsBloc? permissionsBloc;

  final UpdateUserProfileBloc? updateUserProfileBloc;

  @override
  String toString() {
    return 'WelcomeRouteArgs{key: $key, permissionsBloc: $permissionsBloc, updateUserProfileBloc: $updateUserProfileBloc}';
  }
}
