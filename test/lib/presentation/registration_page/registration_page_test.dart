//
// import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:golden_toolkit/golden_toolkit.dart';
// import 'package:mockito/mockito.dart';
// import 'package:trip_tally/presentation/pages/registration_page/bloc/registration_bloc.dart';
// import 'package:trip_tally/presentation/pages/registration_page/registration_page.dart';
// import 'package:trip_tally/presentation/utils/enums/errors.dart';
//
// import '../../../golden_test_runner.dart';
// import '../../../mocks.mocks.dart';
//
// void main() {
//
//   TestWidgetsFlutterBinding.ensureInitialized();
//
//   // group('Golden tests with custom fonts', () {
//   //   setUp(() async {
//   //     await loadAppFonts();
//   //   });
//   //
//   //   testWidgets('My custom font golden test', (WidgetTester tester) async {
//   //     await tester.pumpWidget(const MaterialApp(
//   //       home: Text('Test', style: TextStyle(fontFamily: 'NunitoSans')),
//   //     ));
//   //     await tester.pumpAndSettle();
//   //     await expectLater(find.byType(MaterialApp), matchesGoldenFile('registration_bloc_success.png'));
//   //     // await expectLater(find.byType(MaterialApp), matchesGoldenFile('registration_bloc_failure_registration.png'));
//   //     // await expectLater(find.byType(MaterialApp), matchesGoldenFile('registration_bloc_failure_with_wrong_password.png'));
//   //   });
//   // });
//
//   late MockRegistrationBloc mockRegistrationBloc;
//   setUp(() {
//     mockRegistrationBloc = MockRegistrationBloc();
//   });
//
//
//   runGoldenTest('RegistrationBloc - success', builder: () {
//     when(mockRegistrationBloc.state).thenAnswer((realInvocation) => const RegistrationState.initial());
//     when(mockRegistrationBloc.stream).thenAnswer((realInvocation) => Stream.value(const RegistrationState.success()));
//
//     return RegistrationPage(bloc: mockRegistrationBloc);
//   });
//   //
//   // runGoldenTest('RegistrationBloc - failure with wrong password', builder: () {
//   //   when(mockRegistrationBloc.state).thenAnswer((realInvocation) => const RegistrationState.initial());
//   //   when(mockRegistrationBloc.stream).thenAnswer((realInvocation) => Stream.value(const RegistrationState.failure(Errors.passwordDontMatch)));
//   //
//   //   return RegistrationPage(bloc: mockRegistrationBloc);
//   // });
//   //
//   // runGoldenTest('RegistrationBloc - failure registration', builder: () {
//   //   when(mockRegistrationBloc.state).thenAnswer((realInvocation) => const RegistrationState.initial());
//   //   when(mockRegistrationBloc.stream).thenAnswer((realInvocation) => Stream.value(const RegistrationState.failure(Errors.somethingWentWrong)));
//   //
//   //   return RegistrationPage(bloc: mockRegistrationBloc);
//   // });
// }
