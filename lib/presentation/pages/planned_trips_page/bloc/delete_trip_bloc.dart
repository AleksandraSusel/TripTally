import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_tally/domain/use_case/delete_trip_use_case.dart';

import 'package:trip_tally/presentation/utils/enums/errors.dart';

part 'delete_trip_event.dart';

part 'delete_trip_state.dart';

part 'delete_trip_bloc.freezed.dart';

@injectable
class DeleteTripBloc extends Bloc<DeleteTripEvent, DeleteTripState> {
  DeleteTripBloc(this._deleteTripUseCase) : super(const DeleteTripState.loading()) {
    on<DeleteTripEvent>(_onDeleteTripEvent);
  }

  final DeleteTripUseCase _deleteTripUseCase;

  Future<void> _onDeleteTripEvent(DeleteTripEvent event, Emitter<DeleteTripState> emit) async {
    emit(const DeleteTripState.loading());

    final result = await _deleteTripUseCase(event.tripId);
    result.fold(
      (l) => emit(DeleteTripState.error(l.error)),
      (r) => emit(
        const DeleteTripState.success(),
      ),
    );
  }
}
