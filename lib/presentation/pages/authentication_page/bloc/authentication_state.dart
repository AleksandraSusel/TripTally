part of 'authentication_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.initial() = _Initial;

  const factory AuthenticationState.failure(Errors error) = _Failure;

  const factory AuthenticationState.registered() = _Registered;

  const factory AuthenticationState.logged() = _Logged;

  const factory AuthenticationState.loading() = _Loading;
}
