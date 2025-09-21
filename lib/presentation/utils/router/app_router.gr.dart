// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [AuthenticationPage]
class AuthenticationRoute extends PageRouteInfo<AuthenticationRouteArgs> {
  AuthenticationRoute({
    Key? key,
    AuthenticationBloc? bloc,
    List<PageRouteInfo>? children,
  }) : super(
          AuthenticationRoute.name,
          args: AuthenticationRouteArgs(key: key, bloc: bloc),
          initialChildren: children,
        );

  static const String name = 'AuthenticationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AuthenticationRouteArgs>(
        orElse: () => const AuthenticationRouteArgs(),
      );
      return AuthenticationPage(key: args.key, bloc: args.bloc);
    },
  );
}

class AuthenticationRouteArgs {
  const AuthenticationRouteArgs({this.key, this.bloc});

  final Key? key;

  final AuthenticationBloc? bloc;

  @override
  String toString() {
    return 'AuthenticationRouteArgs{key: $key, bloc: $bloc}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! AuthenticationRouteArgs) return false;
    return key == other.key && bloc == other.bloc;
  }

  @override
  int get hashCode => key.hashCode ^ bloc.hashCode;
}

/// generated route for
/// [CreateExpensesPage]
class CreateExpensesRoute extends PageRouteInfo<CreateExpensesRouteArgs> {
  CreateExpensesRoute({
    required TripEntity trip,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          CreateExpensesRoute.name,
          args: CreateExpensesRouteArgs(trip: trip, key: key),
          initialChildren: children,
        );

  static const String name = 'CreateExpensesRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CreateExpensesRouteArgs>();
      return CreateExpensesPage(trip: args.trip, key: args.key);
    },
  );
}

class CreateExpensesRouteArgs {
  const CreateExpensesRouteArgs({required this.trip, this.key});

  final TripEntity trip;

  final Key? key;

  @override
  String toString() {
    return 'CreateExpensesRouteArgs{trip: $trip, key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! CreateExpensesRouteArgs) return false;
    return trip == other.trip && key == other.key;
  }

  @override
  int get hashCode => trip.hashCode ^ key.hashCode;
}

/// generated route for
/// [CreateTripBasicInfoPage]
class CreateTripBasicInfoRoute extends PageRouteInfo<CreateTripBasicInfoRouteArgs> {
  CreateTripBasicInfoRoute({
    CreateTripBloc? createTripBloc,
    Key? key,
    OsmSuggestionsCubit? cubit,
    TripEntity? trip,
    UpdateTripBloc? updateTripBloc,
    List<PageRouteInfo>? children,
  }) : super(
          CreateTripBasicInfoRoute.name,
          args: CreateTripBasicInfoRouteArgs(
            createTripBloc: createTripBloc,
            key: key,
            cubit: cubit,
            trip: trip,
            updateTripBloc: updateTripBloc,
          ),
          initialChildren: children,
        );

  static const String name = 'CreateTripBasicInfoRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CreateTripBasicInfoRouteArgs>(
        orElse: () => const CreateTripBasicInfoRouteArgs(),
      );
      return CreateTripBasicInfoPage(
        createTripBloc: args.createTripBloc,
        key: args.key,
        cubit: args.cubit,
        trip: args.trip,
        updateTripBloc: args.updateTripBloc,
      );
    },
  );
}

class CreateTripBasicInfoRouteArgs {
  const CreateTripBasicInfoRouteArgs({
    this.createTripBloc,
    this.key,
    this.cubit,
    this.trip,
    this.updateTripBloc,
  });

  final CreateTripBloc? createTripBloc;

  final Key? key;

  final OsmSuggestionsCubit? cubit;

  final TripEntity? trip;

  final UpdateTripBloc? updateTripBloc;

  @override
  String toString() {
    return 'CreateTripBasicInfoRouteArgs{createTripBloc: $createTripBloc, key: $key, cubit: $cubit, trip: $trip, updateTripBloc: $updateTripBloc}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! CreateTripBasicInfoRouteArgs) return false;
    return createTripBloc == other.createTripBloc &&
        key == other.key &&
        cubit == other.cubit &&
        trip == other.trip &&
        updateTripBloc == other.updateTripBloc;
  }

  @override
  int get hashCode => createTripBloc.hashCode ^ key.hashCode ^ cubit.hashCode ^ trip.hashCode ^ updateTripBloc.hashCode;
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children}) : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomePage();
    },
  );
}

/// generated route for
/// [PlannedTripsPage]
class PlannedTripsRoute extends PageRouteInfo<PlannedTripsRouteArgs> {
  PlannedTripsRoute({
    Key? key,
    GetAllUserTripsBloc? getAllUserTripsBloc,
    DeleteTripBloc? deleteTripBloc,
    List<PageRouteInfo>? children,
  }) : super(
          PlannedTripsRoute.name,
          args: PlannedTripsRouteArgs(
            key: key,
            getAllUserTripsBloc: getAllUserTripsBloc,
            deleteTripBloc: deleteTripBloc,
          ),
          initialChildren: children,
        );

  static const String name = 'PlannedTripsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PlannedTripsRouteArgs>(
        orElse: () => const PlannedTripsRouteArgs(),
      );
      return PlannedTripsPage(
        key: args.key,
        getAllUserTripsBloc: args.getAllUserTripsBloc,
        deleteTripBloc: args.deleteTripBloc,
      );
    },
  );
}

class PlannedTripsRouteArgs {
  const PlannedTripsRouteArgs({
    this.key,
    this.getAllUserTripsBloc,
    this.deleteTripBloc,
  });

  final Key? key;

  final GetAllUserTripsBloc? getAllUserTripsBloc;

  final DeleteTripBloc? deleteTripBloc;

  @override
  String toString() {
    return 'PlannedTripsRouteArgs{key: $key, getAllUserTripsBloc: $getAllUserTripsBloc, deleteTripBloc: $deleteTripBloc}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! PlannedTripsRouteArgs) return false;
    return key == other.key &&
        getAllUserTripsBloc == other.getAllUserTripsBloc &&
        deleteTripBloc == other.deleteTripBloc;
  }

  @override
  int get hashCode => key.hashCode ^ getAllUserTripsBloc.hashCode ^ deleteTripBloc.hashCode;
}

/// generated route for
/// [TestM3Page]
class TestM3Route extends PageRouteInfo<void> {
  const TestM3Route({List<PageRouteInfo>? children}) : super(TestM3Route.name, initialChildren: children);

  static const String name = 'TestM3Route';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const TestM3Page();
    },
  );
}

/// generated route for
/// [TripPanelPage]
class TripPanelRoute extends PageRouteInfo<void> {
  const TripPanelRoute({List<PageRouteInfo>? children}) : super(TripPanelRoute.name, initialChildren: children);

  static const String name = 'TripPanelRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const TripPanelPage();
    },
  );
}

/// generated route for
/// [TripsHistoryPage]
class TripsHistoryRoute extends PageRouteInfo<void> {
  const TripsHistoryRoute({List<PageRouteInfo>? children}) : super(TripsHistoryRoute.name, initialChildren: children);

  static const String name = 'TripsHistoryRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const TripsHistoryPage();
    },
  );
}

/// generated route for
/// [UserProfilePage]
class UserProfileRoute extends PageRouteInfo<void> {
  const UserProfileRoute({List<PageRouteInfo>? children}) : super(UserProfileRoute.name, initialChildren: children);

  static const String name = 'UserProfileRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const UserProfilePage();
    },
  );
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<WelcomeRouteArgs>(
        orElse: () => const WelcomeRouteArgs(),
      );
      return WelcomePage(
        key: args.key,
        permissionsBloc: args.permissionsBloc,
        updateUserProfileBloc: args.updateUserProfileBloc,
      );
    },
  );
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

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! WelcomeRouteArgs) return false;
    return key == other.key &&
        permissionsBloc == other.permissionsBloc &&
        updateUserProfileBloc == other.updateUserProfileBloc;
  }

  @override
  int get hashCode => key.hashCode ^ permissionsBloc.hashCode ^ updateUserProfileBloc.hashCode;
}
