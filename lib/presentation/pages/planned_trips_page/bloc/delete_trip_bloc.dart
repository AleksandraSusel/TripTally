import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_tally/domain/use_case/delete_trip_use_case.dart';
import 'package:trip_tally/presentation/utils/basic_state.dart';

part 'delete_trip_event.dart';

@injectable
class DeleteTripBloc extends Bloc<DeleteTripEvent, BasicState<void>> {
  DeleteTripBloc(this._deleteTripUseCase) : super(const LoadedState(data: null)) {
    on<DeleteTripEvent>(_onDeleteTripEvent);
  }

  final DeleteTripUseCase _deleteTripUseCase;

  Future<void> _onDeleteTripEvent(
    DeleteTripEvent event,
    Emitter<BasicState<void>> emit,
  ) async {
    emit(const LoadingState());

    final result = await _deleteTripUseCase(event.tripId);
    result.fold(
      (l) => emit(FailureState(l.error)),
      (r) => emit(const SuccessState()),
    );
  }
}
