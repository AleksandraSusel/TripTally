part of 'registration_bloc.dart';

@freezed
class RegistrationState with _$RegistrationState {
  const factory RegistrationState.initial() = _Initial;

  const factory RegistrationState.loading() = _Loading;

  const factory RegistrationState.success() = _Success;

  const factory RegistrationState.failure(Errors error) = _Failure;
}
