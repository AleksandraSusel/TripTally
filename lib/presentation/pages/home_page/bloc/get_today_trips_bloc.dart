import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_tally/domain/entities/trips/trip_entity.dart';
import 'package:trip_tally/domain/use_case/get_today_trips_use_case.dart';
import 'package:trip_tally/presentation/utils/basic_state.dart';

part 'get_today_trips_event.dart';

@injectable
class GetTodayTripsBloc extends Bloc<GetTodayTripsEvent, BasicState<TripEntity?>> {
  GetTodayTripsBloc(this._getTodayTripsUseCase) : super(const LoadingState()) {
    on<OnGetTodayTripsEvent>(_onGetTodayTripsEvent);
  }

  final GetTodayTripsUseCase _getTodayTripsUseCase;

  Future<void> _onGetTodayTripsEvent(
    OnGetTodayTripsEvent event,
    Emitter<BasicState<TripEntity?>> emit,
  ) async {
    emit(const LoadingState());
    final result = await _getTodayTripsUseCase();
    result.fold(
      (l) => emit(FailureState(l.error)),
      (r) => emit(LoadedState(data: r)),
    );
  }
}
