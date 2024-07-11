import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';

part 'add_expenses_state.freezed.dart';

@freezed
class AddExpensesState with _$AddExpensesState {
  const factory AddExpensesState.initial() = _Initial;

  const factory AddExpensesState.success() = _Success;

  const factory AddExpensesState.failure(Errors error) = _Failure;
}
