part of 'app_bloc.dart';

sealed class AppEvent extends Equatable {
  const AppEvent();

  @override
  List<Object?> get props => [];
}

class OnInitializeAppEvent extends AppEvent {
  const OnInitializeAppEvent();
}
