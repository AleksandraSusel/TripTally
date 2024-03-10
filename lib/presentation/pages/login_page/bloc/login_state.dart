part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;

  const factory LoginState.failure(Errors error) = _Failure;

  const factory LoginState.success() = _Success;

  const factory LoginState.loading() = _Loading;
}
