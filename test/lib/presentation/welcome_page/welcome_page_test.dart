import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:trip_tally/presentation/pages/welcome_page/welcome_page.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';
import 'package:trip_tally/presentation/utils/permissions/bloc/permissions_bloc.dart';
import 'package:trip_tally/presentation/widgets/custom_text_field.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/avatar_picker.dart';

import '../../../golden_test_runner.dart';
import '../../../mocks.mocks.dart';

void main() {
  late MockPermissionsBloc mockPermissionsBloc;
  setUp(() {
    mockPermissionsBloc = MockPermissionsBloc();
  });

  setUp(() {
    when(mockPermissionsBloc.state).thenAnswer((_) => const PermissionsState.loaded(PermissionStatus.granted));
    when(mockPermissionsBloc.close()).thenAnswer((_) async {});
    when(mockPermissionsBloc.stream)
        .thenAnswer((_) => Stream.value(const PermissionsState.loaded(PermissionStatus.granted)));
  });

  WelcomePage buildPage() => WelcomePage(permissionsBloc: mockPermissionsBloc);

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
        (_) => Stream.value(
          const PermissionsState.error(Errors.somethingWrongPermissions),
        ),
      );
      return buildPage();
    },
  );
}
