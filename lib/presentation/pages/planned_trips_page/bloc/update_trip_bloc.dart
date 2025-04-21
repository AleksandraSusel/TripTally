import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_tally/domain/entities/trips/create_trip_entity.dart';
import 'package:trip_tally/domain/use_case/update_trip_use_case.dart';
import 'package:trip_tally/presentation/utils/basic_state.dart';

part 'update_trip_event.dart';

@injectable
class UpdateTripBloc extends Bloc<UpdateTripEvent, BasicState<void>> {
  UpdateTripBloc(this._updateTripUseCase) : super(const LoadingState()) {
    on<UpdateTripEvent>(_onUpdateTripEvent);
  }

  final UpdateTripUseCase _updateTripUseCase;

  Future<void> _onUpdateTripEvent(
    UpdateTripEvent event,
    Emitter<BasicState<void>> emit,
  ) async {
    emit(const LoadingState());
    final result = await _updateTripUseCase(
      UpdateTripUseCaseParams(
        id: event.tripId,
        entity: event.entity,
      ),
    );

    result.fold(
      (l) => emit(FailureState(l.error)),
      (r) => emit(const SuccessState()),
    );
  }
}
