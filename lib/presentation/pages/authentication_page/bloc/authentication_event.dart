part of 'authentication_bloc.dart';

class AuthenticationEvent extends Equatable {
  const AuthenticationEvent();

  @override
  List<Object?> get props => [];
}

class OnTapLoginEvent extends AuthenticationEvent {
  const OnTapLoginEvent({
    required this.email,
    required this.password,
  });

  final String email;
  final String password;

  @override
  List<Object?> get props => [email, password];
}

class OnTapRegisterEvent extends AuthenticationEvent {
  const OnTapRegisterEvent({
    required this.email,
    required this.password,
    required this.repeatPassword,
  });

  final String email;
  final String password;
  final String repeatPassword;

  @override
  List<Object?> get props => [email, password];
}
