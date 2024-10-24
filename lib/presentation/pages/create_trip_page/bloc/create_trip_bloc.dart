import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_tally/domain/entities/trips/create_trip_entity.dart';
import 'package:trip_tally/domain/use_case/create_trip_use_case.dart';
import 'package:trip_tally/presentation/pages/create_trip_page/bloc/create_trip_state.dart';

part 'create_trip_event.dart';

@injectable
class CreateTripBloc extends Bloc<CreateTripEvent, CreateTripState> {
  CreateTripBloc(this._createTripUseCase) : super(const CreateTripState.initial()) {
    on<OnCreateTripEvent>(_onCreateTripEvent);
  }

  final CreateTripUseCase _createTripUseCase;

  Future<void> _onCreateTripEvent(OnCreateTripEvent event, Emitter<CreateTripState> emit) async {
    emit(const CreateTripState.loading());

    final result = await _createTripUseCase(event.entity);

    result.fold(
      (l) => emit(CreateTripState.failure(l.error)),
      (r) => emit(CreateTripState.success(entity: r)),
    );
  }
}
