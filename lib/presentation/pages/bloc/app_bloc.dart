import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trip_tally/domain/utils/shared_prefs_keys.dart';

part 'app_bloc.freezed.dart';
part 'app_event.dart';
part 'app_state.dart';

@injectable
class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc(this.prefs) : super(const AppState.loading()) {
    on<OnInitializeAppEvent>(_onInitializeAppEvent);
  }

  final SharedPreferences prefs;

  Future<void> _onInitializeAppEvent(OnInitializeAppEvent event, Emitter<AppState> emit) async {
    final token = prefs.get(SharedPrefsKeys.token);
    if (token != null) {
      emit(const AppState.success());
    } else {
      emit(const AppState.toLoginPage());
    }
  }
}
