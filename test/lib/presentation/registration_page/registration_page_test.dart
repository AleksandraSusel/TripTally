import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_tally/presentation/pages/registration_page/bloc/registration_bloc.dart';
import 'package:trip_tally/presentation/pages/registration_page/registration_page.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';
import 'package:trip_tally/presentation/widgets/custom_elevated_button.dart';
import 'package:trip_tally/presentation/widgets/custom_text_field.dart';

import '../../../golden_test_runner.dart';
import '../../../mocks.mocks.dart';

void main() {
  late MockRegistrationBloc mockRegistrationBloc;
  setUp(() {
    mockRegistrationBloc = MockRegistrationBloc();
  });

  setUp(() {
    when(mockRegistrationBloc.state).thenAnswer((_) => const RegistrationState.initial());
    when(mockRegistrationBloc.close()).thenAnswer((_) async {});
  });

  runGoldenTest('RegistrationBloc - initial', builder: () {
    when(mockRegistrationBloc.stream).thenAnswer((realInvocation) => Stream.value(const RegistrationState.initial()));

    return RegistrationPage(bloc: mockRegistrationBloc);
  });

  runGoldenTest('RegistrationBloc - failure registration', builder: () {
    when(mockRegistrationBloc.stream)
        .thenAnswer((realInvocation) => Stream.value(const RegistrationState.failure(Errors.somethingWentWrong)));

    return RegistrationPage(bloc: mockRegistrationBloc);
  });

  runGoldenTest('RegistrationBloc - validation of empty fields', whilePerforming: (tester) async {
    await tester.tap(find.byType(CustomElevatedButton));
    return;
  }, builder: () {
    when(mockRegistrationBloc.stream).thenAnswer((realInvocation) => Stream.value(const RegistrationState.initial()));
    return RegistrationPage(bloc: mockRegistrationBloc);
  });

  runGoldenTest('RegistrationBloc - validation of invalid email', whilePerforming: (tester) async {
    await tester.enterText(find.byType(CustomTextField).first, 'invalidEmail');
    await tester.tap(find.byType(CustomElevatedButton));
    return;
  }, builder: () {
    when(mockRegistrationBloc.stream).thenAnswer((realInvocation) => Stream.value(const RegistrationState.initial()));
    return RegistrationPage(bloc: mockRegistrationBloc);
  });

  runGoldenTest('RegistrationBloc - validation of incompatible passwords', whilePerforming: (tester) async {
    await tester.enterText(find.byType(CustomTextField).at(1), 'password');
    await tester.enterText(find.byType(CustomTextField).last, 'password1');
    await tester.tap(find.byType(CustomElevatedButton));
    return;
  }, builder: () {
    when(mockRegistrationBloc.stream).thenAnswer((realInvocation) => Stream.value(const RegistrationState.initial()));
    return RegistrationPage(bloc: mockRegistrationBloc);
  });
}
