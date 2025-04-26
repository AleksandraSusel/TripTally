import 'package:equatable/equatable.dart';
import 'package:trip_tally/presentation/utils/basic_state.dart';

sealed class AuthenticationState extends BasicState<void> with EquatableMixin {
  const AuthenticationState();

  @override
  List<Object?> get props => [];
}

class Registered extends AuthenticationState {
  const Registered();
}

class Logged extends AuthenticationState {
  const Logged();
}
