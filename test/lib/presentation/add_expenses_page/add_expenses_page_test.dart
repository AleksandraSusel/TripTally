import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_tally/presentation/pages/add_expenses_page/add_expenses_page.dart';
import 'package:trip_tally/presentation/pages/add_expenses_page/bloc/add_expenses_state.dart';

import '../../../golden_test_runner.dart';
import '../../../mocks.mocks.dart';

void main() {
  late MockAddExpensesBloc mockAddExpensesBloc;
  setUp(() {
    mockAddExpensesBloc = MockAddExpensesBloc();
  });
  setUp(() {
    when(mockAddExpensesBloc.state).thenAnswer((_) => const AddExpensesState.initial());
    when(mockAddExpensesBloc.close()).thenAnswer((_) async {});
  });

  runGoldenTest(
    'AddExpensesPage initial',
    builder: () {
      when(mockAddExpensesBloc.stream).thenAnswer(
        (realInvocation) => Stream.value(const AddExpensesState.initial()),
      );
      return AddExpensesPage(
        bloc: mockAddExpensesBloc,
      );
    },
  );
}
