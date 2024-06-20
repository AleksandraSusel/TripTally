import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_tally/domain/entities/user/login_entity.dart';
import 'package:trip_tally/domain/use_case/login_use_case.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(this._loginUseCase) : super(const LoginState.initial()) {
    on<OnTapLoginEvent>(_onTapLogin);
  }

  final LoginUseCase _loginUseCase;

  Future<void> _onTapLogin(
    OnTapLoginEvent event,
    Emitter<LoginState> emit,
  ) async {
    emit(const LoginState.loading());
    final result = await _loginUseCase.call(LoginEntity(email: event.email, password: event.password));
    result.fold(
      (l) => emit(LoginState.failure(l.error)),
      (r) => emit(const LoginState.success()),
    );
  }
}
