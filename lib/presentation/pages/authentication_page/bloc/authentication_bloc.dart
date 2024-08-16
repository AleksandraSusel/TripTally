import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_tally/domain/entities/user/login_entity.dart';
import 'package:trip_tally/domain/use_case/login_use_case.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';

part 'authentication_bloc.freezed.dart';

part 'authentication_event.dart';

part 'authentication_state.dart';

@injectable
class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc(this._loginUseCase) : super(const AuthenticationState.initial()) {
    on<OnTapLoginEvent>(_onTapLogin);
  }

  final LoginUseCase _loginUseCase;

  Future<void> _onTapLogin(
    OnTapLoginEvent event,
    Emitter<AuthenticationState> emit,
  ) async {
    emit(const AuthenticationState.loading());
    final result = await _loginUseCase.call(LoginEntity(email: event.email, password: event.password));
    result.fold(
      (l) => emit(AuthenticationState.failure(l.error)),
      (r) => emit(const AuthenticationState.success()),
    );
  }
}
