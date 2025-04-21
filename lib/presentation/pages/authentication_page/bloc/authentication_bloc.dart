import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_tally/domain/entities/user/create_account_entity.dart';
import 'package:trip_tally/domain/entities/user/login_entity.dart';
import 'package:trip_tally/domain/use_case/create_account_use_case.dart';
import 'package:trip_tally/domain/use_case/login_use_case.dart';
import 'package:trip_tally/presentation/pages/authentication_page/bloc/authentication_state.dart';
import 'package:trip_tally/presentation/utils/basic_state.dart';

part 'authentication_event.dart';

@injectable
class AuthenticationBloc extends Bloc<AuthenticationEvent, BasicState<void>> {
  AuthenticationBloc(
    this._loginUseCase,
    this._createAccountUseCase,
  ) : super(const LoadedState<void>(data: null)) {
    on<OnTapLoginEvent>(_onTapLogin);
    on<OnTapRegisterEvent>(_onTapRegister);
  }

  final LoginUseCase _loginUseCase;
  final CreateAccountUseCase _createAccountUseCase;

  Future<void> _onTapLogin(
    OnTapLoginEvent event,
    Emitter<BasicState<void>> emit,
  ) async {
    emit(const LoadingState<void>());
    final result = await _loginUseCase.call(
      LoginEntity(
        email: event.email,
        password: event.password,
      ),
    );
    result.fold(
      (l) => emit(FailureState(l.error)),
      (r) => emit(const Logged()),
    );
  }

  Future<void> _onTapRegister(
    OnTapRegisterEvent event,
    Emitter<BasicState<void>> emit,
  ) async {
    emit(const LoadingState<void>());
    final result = await _createAccountUseCase.call(
      CreateAccountEntity(
        email: event.email,
        password: event.password,
      ),
    );
    result.fold(
      (l) => emit(FailureState(l.error)),
      (r) => emit(const Registered()),
    );
  }
}
