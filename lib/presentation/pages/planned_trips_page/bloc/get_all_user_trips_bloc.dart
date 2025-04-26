import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_tally/domain/entities/trips/trip_entity.dart';
import 'package:trip_tally/domain/use_case/get_all_user_trips_use_case.dart';
import 'package:trip_tally/presentation/utils/basic_state.dart';

part 'get_all_user_trips_event.dart';

@injectable
class GetAllUserTripsBloc extends Bloc<GetAllUserTripsEvent, BasicState<List<TripEntity>>> {
  GetAllUserTripsBloc(this._getAllUserTripsUseCase) : super(const LoadingState()) {
    on<OnGetAllUserTripsEvent>(_onGetAllTripsEvent);
  }

  final GetAllUserTripsUseCase _getAllUserTripsUseCase;

  Future<void> _onGetAllTripsEvent(
    OnGetAllUserTripsEvent event,
    Emitter<BasicState<List<TripEntity>>> emit,
  ) async {
    emit(const LoadingState());
    final result = await _getAllUserTripsUseCase();

    result.fold(
      (l) => emit(FailureState(l.error)),
      (r) => emit(LoadedState(data: r)),
    );
  }
}
