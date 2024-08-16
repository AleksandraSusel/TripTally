import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';

part 'create_expenses_state.freezed.dart';

@freezed
class CreateExpensesState with _$CreateExpensesState {
  const factory CreateExpensesState.initial() = _Initial;

  const factory CreateExpensesState.success() = _Success;

  const factory CreateExpensesState.failure(Errors error) = _Failure;

  const factory CreateExpensesState.loading() = _Loading;
}
