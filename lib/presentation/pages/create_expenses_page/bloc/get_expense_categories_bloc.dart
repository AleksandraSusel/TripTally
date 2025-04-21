import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_tally/domain/entities/expenses/expense_categories_entity.dart';
import 'package:trip_tally/domain/use_case/get_expense_categories_use_case.dart';
import 'package:trip_tally/presentation/utils/basic_state.dart';

part 'get_expense_categories_event.dart';

@injectable
class GetExpenseCategoriesBloc extends Bloc<GetExpenseCategoriesEvent, BasicState<ExpenseCategoriesEntity>> {
  GetExpenseCategoriesBloc(this._getExpenseCategoriesUseCase) : super(const LoadingState()) {
    on<GetExpenseCategoriesEvent>(_onGetExpenseCategoriesEvent);
  }

  final GetExpenseCategoriesUseCase _getExpenseCategoriesUseCase;

  Future<void> _onGetExpenseCategoriesEvent(
    GetExpenseCategoriesEvent event,
    Emitter<BasicState<ExpenseCategoriesEntity>> emit,
  ) async {
    final result = await _getExpenseCategoriesUseCase();
    result.fold(
      (l) => emit(FailureState(l.error)),
      (r) => emit(LoadedState(data: r)),
    );
  }
}
