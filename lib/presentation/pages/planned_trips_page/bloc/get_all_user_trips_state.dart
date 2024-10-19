part of 'get_all_user_trips_bloc.dart';

@freezed
class GetAllUserTripsState with _$GetAllUserTripsState {
  const factory GetAllUserTripsState.loading() = _Loading;

  const factory GetAllUserTripsState.loaded(List<TripEntity> trips) = _Loaded;

  const factory GetAllUserTripsState.error(Errors error) = _Error;
}
