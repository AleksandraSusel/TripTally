import 'package:trip_tally/presentation/pages/user_profile/user_profile_page.dart';

import '../../../golden_test_runner.dart';

void main() {
  runGoldenTest(
    'UserProfilePage-initial',
    builder: () {
      return const UserProfilePage();
    },
  );
}
