import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_tally/domain/entities/expenses/expense_entity.dart';
import 'package:trip_tally/domain/use_case/add_expense_use_case.dart';
import 'package:trip_tally/presentation/pages/add_expenses_page/bloc/add_expenses_event.dart';
import 'package:trip_tally/presentation/pages/add_expenses_page/bloc/add_expenses_state.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';

@injectable
class AddExpensesBloc extends Bloc<AddExpensesEvent, AddExpensesState> {
  AddExpensesBloc(this._useCase) : super(const AddExpensesState.initial()) {
    on<AddExpenseEvent>(_addExpenseEvent);
  }

  final AddExpenseUseCase _useCase;

  Future<void> _addExpenseEvent(AddExpenseEvent event, Emitter<AddExpensesState> emit) async {
    final result = await _useCase.call(
      ExpenseEntity(
        name: event.name,
        date: event.date,
        amount: event.amount,
        currency: event.currency,
        tripId: event.tripId,
      ),
    );

    result.fold(
      (l) => emit(const AddExpensesState.failure(Errors.somethingWentWrong)),
      (r) => emit(const AddExpensesState.success()),
    );
  }
}
