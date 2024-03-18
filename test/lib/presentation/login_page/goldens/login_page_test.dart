import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_tally/presentation/pages/login_page/bloc/login_bloc.dart';
import 'package:trip_tally/presentation/pages/login_page/login_page.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';
import 'package:trip_tally/presentation/widgets/custom_floating_action_button.dart';
import 'package:trip_tally/presentation/widgets/custom_text_field.dart';

import '../../../../golden_test_runner.dart';
import '../../../../mocks.mocks.dart';

void main() {
  late MockLoginBloc mockLoginBloc;

  setUp(() {
    mockLoginBloc = MockLoginBloc();
  });

  setUp(() {
    when(mockLoginBloc.state).thenAnswer((_) => const LoginState.initial());
    when(mockLoginBloc.close()).thenAnswer((_) async {});
  });

  runGoldenTest(
    'LoginPage-initial',
    builder: () {
      when(mockLoginBloc.stream).thenAnswer((realInvocation) => Stream.value(const LoginState.initial()));
      return LoginPage(bloc: mockLoginBloc);
    },
  );

  runGoldenTest(
    'LoginPage-failure',
    builder: () {
      when(mockLoginBloc.stream).thenAnswer((realInvocation) => Stream.value(const LoginState.failure(Errors.somethingWentWrong)));
      return LoginPage(bloc: mockLoginBloc);
    },
  );

  runGoldenTest('LoginPage- validation of empty fields', whilePerforming: (tester) async {
    await tester.tap(find.byType(CircleSvgButton));
    return;
  }, builder: () {
    when(mockLoginBloc.stream).thenAnswer((realInvocation) => Stream.value(const LoginState.initial()));
    return LoginPage(bloc: mockLoginBloc);
  });

  runGoldenTest('LoginPage- validation of invalid email', whilePerforming: (tester) async {
    await tester.enterText(find.byType(CustomTextField).first, 'invalidEmail');
    await tester.tap(find.byType(CircleSvgButton));
    return;
  }, builder: () {
    when(mockLoginBloc.stream).thenAnswer((realInvocation) => Stream.value(const LoginState.initial()));
    return LoginPage(
      bloc: mockLoginBloc,
    );
  });
}
