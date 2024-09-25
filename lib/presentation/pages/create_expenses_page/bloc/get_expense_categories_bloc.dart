import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_tally/domain/entities/expenses/expense_categories_entity.dart';
import 'package:trip_tally/domain/use_case/get_expense_categories_use_case.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';

part 'get_expense_categories_event.dart';

part 'get_expense_categories_state.dart';

part 'get_expense_categories_bloc.freezed.dart';

@injectable
class GetExpenseCategoriesBloc extends Bloc<GetExpenseCategoriesEvent, GetExpenseCategoriesState> {
  GetExpenseCategoriesBloc(this._getExpenseCategoriesUseCase) : super(const GetExpenseCategoriesState.loading()) {
    on<GetExpenseCategoriesEvent>(_onGetExpenseCategoriesEvent);
  }

  final GetExpenseCategoriesUseCase _getExpenseCategoriesUseCase;

  Future<void> _onGetExpenseCategoriesEvent(
      GetExpenseCategoriesEvent event, Emitter<GetExpenseCategoriesState> emit) async {
    final result = await _getExpenseCategoriesUseCase();
    result.fold(
      (l) => emit(GetExpenseCategoriesState.error(l.error)),
      (r) => emit(GetExpenseCategoriesState.loaded(r)),
    );
  }
}
