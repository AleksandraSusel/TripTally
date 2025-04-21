import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_tally/domain/entities/user/update_user_profile_entity.dart';
import 'package:trip_tally/domain/use_case/update_user_profile_use_case.dart';
import 'package:trip_tally/presentation/utils/basic_state.dart';

part 'update_user_profile_event.dart';

@injectable
class UpdateUserProfileBloc extends Bloc<UpdateUserProfileEvent, BasicState<void>> {
  UpdateUserProfileBloc(this._updateUserProfileUseCase) : super(const LoadedState(data: null)) {
    on<OnUpdateUserProfileEvent>(_onUpdateUserProfileEvent);
  }

  final UpdateUserProfileUseCase _updateUserProfileUseCase;

  Future<void> _onUpdateUserProfileEvent(
    OnUpdateUserProfileEvent event,
    Emitter<BasicState<void>> emit,
  ) async {
    final entity = UpdateUserProfileEntity(
      username: event.username,
      country: event.country,
      defaultCurrencyCode: event.currencyCode,
      profilePicture: event.profilePicture,
    );

    final result = await _updateUserProfileUseCase(entity);

    result.fold(
      (l) => emit(FailureState(l.error)),
      (r) => emit(const SuccessState()),
    );
  }
}
