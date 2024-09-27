import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_tally/domain/entities/trips/trip_entity.dart';
import 'package:trip_tally/domain/use_case/get_all_user_trips_use_case.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';

part 'get_all_user_trips_bloc.freezed.dart';

part 'get_all_user_trips_event.dart';

part 'get_all_user_trips_state.dart';

@injectable
class GetAllUserTripsBloc extends Bloc<GetAllUserTripsEvent, GetAllUserTripsState> {
  GetAllUserTripsBloc(this._getAllUserTripsUseCase) : super(const GetAllUserTripsState.loading()) {
    on<OnGetAllUserTripsEvent>(_onGetAllTripsEvent);
  }

  final GetAllUserTripsUseCase _getAllUserTripsUseCase;

  Future<void> _onGetAllTripsEvent(
    OnGetAllUserTripsEvent event,
    Emitter<GetAllUserTripsState> emit,
  ) async {
    final result = await _getAllUserTripsUseCase();

    result.fold(
      (l) => emit(GetAllUserTripsState.error(l.error)),
      (r) => emit(
        GetAllUserTripsState.loaded(r),
      ),
    );
  }
}
