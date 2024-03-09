import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_tally/presentation/pages/registration_page/bloc/registration_bloc.dart';
import 'package:trip_tally/presentation/pages/registration_page/registration_page.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';

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
}
