import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_tally/domain/entities/trips/create_trip_entity.dart';
import 'package:trip_tally/domain/use_case/create_trip_use_case.dart';
import 'package:trip_tally/presentation/pages/create_trip_page/create_trip_event.dart';
import 'package:trip_tally/presentation/pages/create_trip_page/create_trip_state.dart';

@injectable
class CreateTripBloc extends Bloc<CreateTripEvent, CreateTripState> {
  CreateTripBloc(this._addTripUseCase) : super(const CreateTripState.initial()) {
    on<OnCreateTripEvent>(_onCreateTripEvent);
  }

  final CreateTripUseCase _addTripUseCase;

  Future<void> _onCreateTripEvent(OnCreateTripEvent event, Emitter<CreateTripState> emit) async {
    final result = await _addTripUseCase(
      CreateTripEntity(
        cityName: event.cityName,
        transportType: event.transportType,
        countryCode: event.countryCode,
        dateFrom: event.dateFrom,
        dateTo: event.dateTo,
        plannedCost: event.plannedCost,
        currency: event.currency,
      ),
    );
    result.fold(
      (l) => emit(CreateTripState.failure(l.error)),
      (r) => emit(const CreateTripState.success()),
    );
  }
}
