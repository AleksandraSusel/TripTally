import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_tally/domain/use_case/sign_out_use_case.dart';
import 'package:trip_tally/domain/utils/shared_prefs_utils.dart';
import 'package:trip_tally/presentation/pages/bloc/app_state.dart';
import 'package:trip_tally/presentation/utils/basic_state.dart';

part 'app_event.dart';

@injectable
class AppBloc extends Bloc<AppEvent, BasicState<void>> {
  AppBloc(this.prefs, this._signOutUseCase) : super(const LoadedState<void>(data: null)) {
    on<OnInitializeAppEvent>(_onInitializeAppEvent);
    on<OnLogoutEvent>(_onLogoutEvent);
  }

  final SharedPrefsUtils prefs;
  final SignOutUseCase _signOutUseCase;

  void _onInitializeAppEvent(
    OnInitializeAppEvent event,
    Emitter<BasicState<void>> emit,
  ) {
    final token = prefs.getToken;
    if (token != null) {
      emit(const SuccessState<void>());
    } else {
      emit(const ToLoginPage());
    }
  }

  Future<void> _onLogoutEvent(
    OnLogoutEvent event,
    Emitter<BasicState<void>> emit,
  ) async {
    emit(const LoadingState<void>());
    final result = await _signOutUseCase();
    result.fold(
      (failure) => emit(FailureState(failure.error)),
      (success) => emit(const ToLoginPage()),
    );
  }
}
