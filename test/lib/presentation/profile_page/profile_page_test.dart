import 'package:trip_tally/presentation/pages/profile_page/profile_page.dart';

import '../../../golden_test_runner.dart';

void main() {
  runGoldenTest(
    'ProfilePage-initial',
    builder: () {
      return const ProfilePage();
    },
  );
}
