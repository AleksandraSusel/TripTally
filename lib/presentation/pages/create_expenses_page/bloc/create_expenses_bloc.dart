import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_tally/domain/use_case/create_expense_use_case.dart';
import 'package:trip_tally/presentation/pages/create_expenses_page/bloc/create_expenses_event.dart';
import 'package:trip_tally/presentation/utils/basic_state.dart';

@injectable
class CreateExpensesBloc extends Bloc<CreateExpensesEvent, BasicState<void>> {
  CreateExpensesBloc(this._useCase) : super(const LoadedState(data: null)) {
    on<CreateExpenseEvent>(_createExpenseEvent);
  }

  final CreateExpensesUseCase _useCase;

  Future<void> _createExpenseEvent(
    CreateExpenseEvent event,
    Emitter<BasicState<void>> emit,
  ) async {
    emit(const LoadingState());
    final result = await _useCase(event.expenses);

    result.fold(
      (l) => emit(FailureState(l.error)),
      (r) => emit(const SuccessState()),
    );
  }
}
