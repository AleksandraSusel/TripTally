part of 'delete_trip_bloc.dart';

@freezed
class DeleteTripState with _$DeleteTripState {
  const factory DeleteTripState.loading() = _Loading;

  const factory DeleteTripState.loaded() = _Loaded;

  const factory DeleteTripState.success() = _Success;

  const factory DeleteTripState.error(Errors error) = _Error;
}
