import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_tally/domain/entities/trips/create_trip_entity.dart';
import 'package:trip_tally/domain/use_case/update_trip_use_case.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';

part 'update_trip_event.dart';

part 'update_trip_state.dart';

part 'update_trip_bloc.freezed.dart';

@injectable
class UpdateTripBloc extends Bloc<UpdateTripEvent, UpdateTripState> {
  UpdateTripBloc(this._updateTripUseCase) : super(const UpdateTripState.loading()) {
    on<UpdateTripEvent>(_onUpdateTripEvent);
  }

  final UpdateTripUseCase _updateTripUseCase;

  Future<void> _onUpdateTripEvent(UpdateTripEvent event, Emitter<UpdateTripState> emit) async {
    emit(const UpdateTripState.loading());
    final result = await _updateTripUseCase(UpdateTripUseCaseParams(id: event.tripId, entity: event.entity));

    result.fold(
      (l) => emit(UpdateTripState.error(l.error)),
      (r) => emit(const UpdateTripState.success()),
    );
  }
}
