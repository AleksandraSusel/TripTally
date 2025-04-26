import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:trip_tally/presentation/pages/welcome_page/welcome_page.dart';
import 'package:trip_tally/presentation/utils/basic_state.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';
import 'package:trip_tally/presentation/widgets/custom_text_field.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/avatar_picker.dart';

import '../../../generate_mocks.mocks.dart';
import '../../../golden_test_runner.dart';

void main() {
  late MockPermissionsBloc mockPermissionsBloc;
  late MockUpdateUserProfileBloc mockUpdateUserProfileBloc;
  setUp(() {
    mockPermissionsBloc = MockPermissionsBloc();
    mockUpdateUserProfileBloc = MockUpdateUserProfileBloc();
  });

  setUp(() {
    when(mockPermissionsBloc.state).thenAnswer((_) => const LoadedState(data: PermissionStatus.granted));
    when(mockPermissionsBloc.close()).thenAnswer((_) async {});
    when(mockPermissionsBloc.stream).thenAnswer(
      (_) => Stream.value(const LoadedState(data: PermissionStatus.granted)),
    );

    when(mockUpdateUserProfileBloc.state).thenAnswer((_) => const LoadedState(data: null));
    when(mockUpdateUserProfileBloc.close()).thenAnswer((_) async {});
    when(mockUpdateUserProfileBloc.stream).thenAnswer((_) => Stream.value(const LoadedState(data: null)));
  });

  WelcomePage buildPage() => WelcomePage(
        permissionsBloc: mockPermissionsBloc,
        updateUserProfileBloc: mockUpdateUserProfileBloc,
      );

  runGoldenTest(
    'WelcomePage - Initial',
    builder: buildPage,
  );

  runGoldenTest(
    'WelcomePage - Validators',
    whilePerforming: (tester) async {
      await tester.tap(find.text('Continue'));
      await tester.pumpAndSettle();
      return;
    },
    builder: buildPage,
  );

  runGoldenTest(
    'WelcomePage - Currency sheet',
    whilePerforming: (tester) async {
      await tester.tap(find.byType(CustomTextField).last);
      await tester.pumpAndSettle();
      return;
    },
    builder: buildPage,
  );

  runGoldenTest(
    'WelcomePage - Country sheet',
    whilePerforming: (tester) async {
      await tester.tap(find.byType(CustomTextField).at(1));
      await tester.pumpAndSettle();
      return;
    },
    builder: buildPage,
  );

  runGoldenTest(
    'WelcomePage - Image picker sheet',
    whilePerforming: (tester) async {
      await tester.tap(find.byType(AvatarPicker));
      await tester.pumpAndSettle();
      return;
    },
    builder: buildPage,
  );

  runGoldenTest(
    'WelcomePage - Bloc error',
    builder: () {
      when(mockPermissionsBloc.stream).thenAnswer(
        (_) => Stream.value(const FailureState(Errors.somethingWrongPermissions)),
      );
      return buildPage();
    },
  );
}
