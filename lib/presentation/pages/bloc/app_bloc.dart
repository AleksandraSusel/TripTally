import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/utils/shared_prefs_utils.dart';

part 'app_bloc.freezed.dart';

part 'app_event.dart';

part 'app_state.dart';

@injectable
class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc(this.prefs) : super(const AppState.loading()) {
    on<OnInitializeAppEvent>(_onInitializeAppEvent);
  }

  final SharedPrefsUtils prefs;

  void _onInitializeAppEvent(OnInitializeAppEvent event, Emitter<AppState> emit) {
    final token = prefs.getToken;
    if (token != null) {
      emit(const AppState.success());
    } else {
      emit(const AppState.toLoginPage());
    }
  }
}
