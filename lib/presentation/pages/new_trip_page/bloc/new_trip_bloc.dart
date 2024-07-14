import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_tally/domain/entities/add_trip_entity/add_trip_entity.dart';
import 'package:trip_tally/domain/use_case/add_trip_use_case.dart';
import 'package:trip_tally/presentation/pages/new_trip_page/bloc/new_trip_event.dart';
import 'package:trip_tally/presentation/pages/new_trip_page/bloc/new_trip_state.dart';

@injectable
class NewTripBloc extends Bloc<NewTripEvent, NewTripState> {
  NewTripBloc(this._addTripUseCase) : super(const NewTripState.initial()) {
    on<AddTripEvent>(_addTripEvent);
  }

  final AddTripUseCase _addTripUseCase;

  Future<void> _addTripEvent(AddTripEvent event, Emitter<NewTripState> emit) async {
    final result = await _addTripUseCase(
      AddTripEntity(
        cityName: event.cityName,
        transportType: event.transportType,
        countryCode: event.countryCode,
        dateFrom: event.dateFrom,
        dateTo: event.dateTo,
        plannedCost: event.plannedCost,
      ),
    );
    result.fold(
      (l) => emit(NewTripState.failure(l.error)),
      (r) => emit(const NewTripState.success()),
    );
  }
}
