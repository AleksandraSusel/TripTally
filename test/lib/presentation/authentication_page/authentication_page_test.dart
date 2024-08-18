import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_tally/presentation/pages/authentication_page/authentication_page.dart';
import 'package:trip_tally/presentation/pages/authentication_page/bloc/authentication_bloc.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';
import 'package:trip_tally/presentation/widgets/custom_text_field.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/buttons/primary_elevated_button.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/buttons/surface_outlined_button.dart';

import '../../../golden_test_runner.dart';
import '../../../mocks.mocks.dart';

void main() {
  late MockAuthenticationBloc mockAuthenticationBloc;

  setUp(() {
    mockAuthenticationBloc = MockAuthenticationBloc();
  });

  setUp(() {
    when(mockAuthenticationBloc.state).thenAnswer((_) => const AuthenticationState.initial());
    when(mockAuthenticationBloc.close()).thenAnswer((_) async {});
  });

  runGoldenTest(
    'AuthenticationPage-initial',
    builder: () {
      when(mockAuthenticationBloc.stream).thenAnswer(
        (_) => Stream.value(const AuthenticationState.initial()),
      );
      return AuthenticationPage(bloc: mockAuthenticationBloc);
    },
  );

  runGoldenTest(
    'AuthenticationPage-InitialRegister',
    whilePerforming: (tester) async {
      await tester.tap(find.byType(SurfaceOutlinedButton));
      return;
    },
    builder: () {
      when(mockAuthenticationBloc.stream).thenAnswer(
        (_) => Stream.value(const AuthenticationState.initial()),
      );
      return AuthenticationPage(bloc: mockAuthenticationBloc);
    },
  );

  runGoldenTest(
    'AuthenticationPage-failure',
    builder: () {
      when(mockAuthenticationBloc.stream).thenAnswer(
        (_) => Stream.value(const AuthenticationState.failure(Errors.somethingWentWrong)),
      );
      return AuthenticationPage(bloc: mockAuthenticationBloc);
    },
  );

  runGoldenTest(
    'AuthenticationPage-failureRegister',
    whilePerforming: (tester) async {
      await tester.tap(find.byType(SurfaceOutlinedButton));
      return;
    },
    builder: () {
      when(mockAuthenticationBloc.stream).thenAnswer(
        (_) => Stream.value(const AuthenticationState.failure(Errors.somethingWentWrong)),
      );
      return AuthenticationPage(bloc: mockAuthenticationBloc);
    },
  );

  runGoldenTest(
    'AuthenticationPage- validation of empty fields',
    whilePerforming: (tester) async {
      await tester.tap(find.byType(PrimaryElevatedButton));
      return;
    },
    builder: () {
      when(mockAuthenticationBloc.stream).thenAnswer(
        (_) => Stream.value(const AuthenticationState.initial()),
      );
      return AuthenticationPage(bloc: mockAuthenticationBloc);
    },
  );

  runGoldenTest(
    'AuthenticationPage- validation of empty fields register',
    whilePerforming: (tester) async {
      await tester.tap(find.byType(SurfaceOutlinedButton));
      await tester.pumpAndSettle();
      await tester.tap(find.byType(PrimaryElevatedButton));
      return;
    },
    builder: () {
      when(mockAuthenticationBloc.stream).thenAnswer(
        (_) => Stream.value(const AuthenticationState.initial()),
      );
      return AuthenticationPage(bloc: mockAuthenticationBloc);
    },
  );

  runGoldenTest(
    'AuthenticationPage- validation of invalid email',
    whilePerforming: (tester) async {
      await tester.enterText(
        find.byType(CustomTextField).first,
        'invalidEmail',
      );
      await tester.tap(find.byType(PrimaryElevatedButton));
      return;
    },
    builder: () {
      when(mockAuthenticationBloc.stream).thenAnswer(
        (_) => Stream.value(const AuthenticationState.initial()),
      );
      return AuthenticationPage(
        bloc: mockAuthenticationBloc,
      );
    },
  );

  runGoldenTest(
    'AuthenticationPage- validation of invalid email register',
    whilePerforming: (tester) async {
      await tester.tap(find.byType(SurfaceOutlinedButton));
      await tester.pumpAndSettle();
      await tester.enterText(
        find.byType(CustomTextField).first,
        'invalidEmail',
      );
      await tester.tap(find.byType(PrimaryElevatedButton));
      return;
    },
    builder: () {
      when(mockAuthenticationBloc.stream).thenAnswer(
        (_) => Stream.value(const AuthenticationState.initial()),
      );
      return AuthenticationPage(
        bloc: mockAuthenticationBloc,
      );
    },
  );
}
