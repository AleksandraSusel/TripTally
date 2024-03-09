import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_tally/domain/entities/user/create_user_entity.dart';
import 'package:trip_tally/domain/use_case/create_user_use_case.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';

part 'registration_bloc.freezed.dart';
part 'registration_event.dart';
part 'registration_state.dart';

@injectable
class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  RegistrationBloc(this._createUserUseCase) : super(const RegistrationState.initial()) {
    on<OnTapRegistrationEvent>(_onTapRegistrationEvent);
  }

  final CreateUserUseCase _createUserUseCase;

  Future<void> _onTapRegistrationEvent(OnTapRegistrationEvent event, Emitter<RegistrationState> emit) async {
    final registration = await _createUserUseCase(CreateUserEntity(email: event.email, password: event.password));
    registration.fold(
      (l) {
        emit(const RegistrationState.failure(Errors.somethingWentWrong));
        emit(const RegistrationState.initial());
      },
      (r) {
        emit(const RegistrationState.loading());
        emit(const RegistrationState.success());
      },
    );
  }
}
