import 'package:flutter/cupertino.dart';
import 'package:trip_tally/presentation/theme/app_paths.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';

enum BottomNavItems {
  dashboard(asset: AppPaths.dashboard),
  trips(asset: AppPaths.luggage);

  const BottomNavItems({required this.asset});

  final String asset;
}

extension BottomNavItemsTranslations on BottomNavItems {
  String trText(BuildContext context) => switch (this) {
        BottomNavItems.dashboard => context.tr.bottomNavBarItem_dashboard,
        BottomNavItems.trips => context.tr.bottomNavBarItem_trips,
      };
}
