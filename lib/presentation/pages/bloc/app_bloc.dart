import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'app_bloc.freezed.dart';

part 'app_event.dart';

part 'app_state.dart';

@injectable
class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(const AppState.loading()) {
    on<OnInitializeAppEvent>(_onInitializeAppEvent);
  }

  Future<void> _onInitializeAppEvent(OnInitializeAppEvent event, Emitter<AppState> emit) async {
    emit(const AppState.initial());
  }
}
