part of 'update_trip_bloc.dart';

@freezed
class UpdateTripState with _$UpdateTripState {
  const factory UpdateTripState.loading() = _Initial;

  const factory UpdateTripState.success() = _Success;

  const factory UpdateTripState.error(Errors error) = _Error;
}
