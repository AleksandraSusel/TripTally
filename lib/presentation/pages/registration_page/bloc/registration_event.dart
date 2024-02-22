part of 'registration_bloc.dart';

abstract class RegistrationEvent extends Equatable {
  const RegistrationEvent();

  @override
  List<Object?> get props => [];
}

class OnTapRegistrationEvent extends RegistrationEvent {
  const OnTapRegistrationEvent(this.email, this.password, this.repeatPassword);

  final String email;
  final String password;
  final String repeatPassword;

  @override
  List<Object?> get props => [password, email, repeatPassword];
}
