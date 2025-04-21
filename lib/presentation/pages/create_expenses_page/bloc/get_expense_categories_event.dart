part of 'get_expense_categories_bloc.dart';

sealed class ExpenseCategoriesEvent extends Equatable {
  const ExpenseCategoriesEvent();

  @override
  List<Object?> get props => [];
}

class GetExpenseCategoriesEvent extends ExpenseCategoriesEvent {
  const GetExpenseCategoriesEvent();

  @override
  List<Object?> get props => [];
}
