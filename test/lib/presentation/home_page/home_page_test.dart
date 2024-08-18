import 'package:flutter_test/flutter_test.dart';
import 'package:trip_tally/presentation/pages/home_page/home_page.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/bottom_navigation_bar/bottom_nav_item.dart';

import '../../../golden_test_runner.dart';

void main() {
  runGoldenTest(
    'HomePage - Dashboard',
    builder: () {
      return const HomePage();
    },
  );

  runGoldenTest(
    'HomePage - Trips',
    whilePerforming: (tester) async {
      await tester.tap(find.byType(BottomNavItem).at(1));
      return;
    },
    builder: () {
      return const HomePage();
    },
  );
}
