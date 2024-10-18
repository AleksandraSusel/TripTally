import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';

part 'create_trip_state.freezed.dart';

@freezed
class CreateTripState with _$CreateTripState {
  const factory CreateTripState.initial() = _Initial;

  const factory CreateTripState.success() = _Success;

  const factory CreateTripState.loading() = _Loading;

  const factory CreateTripState.failure(Errors error) = _Failure;
}
