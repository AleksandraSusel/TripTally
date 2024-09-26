part of 'get_expense_categories_bloc.dart';

@freezed
class GetExpenseCategoriesState with _$GetExpenseCategoriesState {
  const factory GetExpenseCategoriesState.loading() = _Loading;

  const factory GetExpenseCategoriesState.loaded(ExpenseCategoriesEntity entity) = _Loaded;

  const factory GetExpenseCategoriesState.error(Errors error) = _Error;
}
