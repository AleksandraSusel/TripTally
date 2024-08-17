import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_tally/presentation/pages/create_expenses_page/bloc/create_expenses_state.dart';
import 'package:trip_tally/presentation/pages/create_expenses_page/create_expenses_page.dart';

import '../../../golden_test_runner.dart';
import '../../../mocks.mocks.dart';

void main() {
  late MockCreateExpensesBloc mockCreateExpensesBloc;
  setUp(() {
    mockCreateExpensesBloc = MockCreateExpensesBloc();
  });
  setUp(() {
    when(mockCreateExpensesBloc.state).thenAnswer((_) => const CreateExpensesState.initial());
    when(mockCreateExpensesBloc.close()).thenAnswer((_) async {});
  });

  runGoldenTest(
    'CreateExpensesPage initial',
    builder: () {
      when(mockCreateExpensesBloc.stream).thenAnswer(
        (realInvocation) => Stream.value(const CreateExpensesState.initial()),
      );
      return CreateExpensesPage(
        bloc: mockCreateExpensesBloc,
      );
    },
  );
}
