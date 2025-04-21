import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_tally/domain/entities/trips/create_trip_entity.dart';
import 'package:trip_tally/domain/entities/trips/trip_entity.dart';
import 'package:trip_tally/domain/use_case/create_trip_use_case.dart';
import 'package:trip_tally/presentation/utils/basic_state.dart';

part 'create_trip_event.dart';

@injectable
class CreateTripBloc extends Bloc<CreateTripEvent, BasicState<TripEntity>> {
  CreateTripBloc(this._createTripUseCase) : super(const InitialState()) {
    on<OnCreateTripEvent>(_onCreateTripEvent);
  }

  final CreateTripUseCase _createTripUseCase;

  Future<void> _onCreateTripEvent(
    OnCreateTripEvent event,
    Emitter<BasicState<TripEntity>> emit,
  ) async {
    emit(const LoadingState());

    final result = await _createTripUseCase(event.entity);

    result.fold(
      (l) => emit(FailureState(l.error)),
      (r) => emit(LoadedState(data: r)),
    );
  }
}
