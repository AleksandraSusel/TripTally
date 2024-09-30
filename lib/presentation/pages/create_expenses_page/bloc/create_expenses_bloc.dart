import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_tally/domain/use_case/create_expense_use_case.dart';
import 'package:trip_tally/presentation/pages/create_expenses_page/bloc/create_expenses_event.dart';
import 'package:trip_tally/presentation/pages/create_expenses_page/bloc/create_expenses_state.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';

@injectable
class CreateExpensesBloc extends Bloc<CreateExpensesEvent, CreateExpensesState> {
  CreateExpensesBloc(this._useCase) : super(const CreateExpensesState.initial()) {
    on<CreateExpenseEvent>(_createExpenseEvent);
  }

  final CreateExpensesUseCase _useCase;

  Future<void> _createExpenseEvent(CreateExpenseEvent event, Emitter<CreateExpensesState> emit) async {
    final result = await _useCase.call(
      event.expenses,
    );

    result.fold(
      (l) => emit(const CreateExpensesState.failure(Errors.somethingWentWrong)),
      (r) => emit(const CreateExpensesState.success()),
    );
  }
}
