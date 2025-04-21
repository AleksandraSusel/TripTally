import 'package:equatable/equatable.dart';
import 'package:trip_tally/presentation/utils/basic_state.dart';

sealed class AppState extends BasicState<void> with EquatableMixin {
  const AppState();

  @override
  List<Object?> get props => [];
}

class ToLoginPage extends AppState {
  const ToLoginPage();
}
