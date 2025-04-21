import 'package:equatable/equatable.dart';
import 'package:trip_tally/domain/entities/expenses/expense_entity.dart';

sealed class CreateExpensesEvent extends Equatable {
  const CreateExpensesEvent();

  @override
  List<Object?> get props => [];
}

class CreateExpenseEvent extends CreateExpensesEvent {
  const CreateExpenseEvent({
    required this.expenses,
  });

  final List<ExpenseEntity> expenses;

  @override
  List<Object?> get props => [expenses];
}
