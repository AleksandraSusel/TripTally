import 'package:flutter/cupertino.dart';
import 'package:trip_tally/presentation/theme/app_paths.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';

enum BottomNavItems {
  dashboard(asset: AppPaths.dashboard),
  trips(asset: AppPaths.luggage),
  expenses(asset: AppPaths.menu),
  community(asset: AppPaths.community),
  tripStatistic(asset: AppPaths.statistic),
  places(asset: AppPaths.places);

  const BottomNavItems({required this.asset});

  final String asset;

  static const List<BottomNavItems> homePageNavItems = [
    dashboard,
    trips,
  ];
  static const List<BottomNavItems> tripPanelItems = [
    community,
    tripStatistic,
    places,
  ];
}

extension BottomNavItemsTranslations on BottomNavItems {
  String trText(BuildContext context) => switch (this) {
        BottomNavItems.dashboard => context.tr.bottomNavBarItem_dashboard,
        BottomNavItems.trips => context.tr.bottomNavBarItem_trips,
        BottomNavItems.expenses => context.tr.bottomNavBarItem_expenses,
        BottomNavItems.community => context.tr.bottomNavBarItem_community,
        BottomNavItems.tripStatistic => context.tr.bottomNavBarItem_statistic,
        BottomNavItems.places => context.tr.bottomNavBarItem_places,
      };

  String? trAppBarTitle(BuildContext context) => switch (this) {
        BottomNavItems.dashboard => null,
        BottomNavItems.trips => context.tr.manageTripsPage_manageTrips,
        BottomNavItems.expenses => null,
        BottomNavItems.community => null,
        BottomNavItems.tripStatistic => null,
        BottomNavItems.places => null,
      };
}
