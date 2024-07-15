import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';

part 'new_trip_state.freezed.dart';

@freezed
class NewTripState with _$NewTripState {
  const factory NewTripState.initial() = _Initial;

  const factory NewTripState.success() = _Success;

  const factory NewTripState.failure(Errors error) = _Failure;
}
