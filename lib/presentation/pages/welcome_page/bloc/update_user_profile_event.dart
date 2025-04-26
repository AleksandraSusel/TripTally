part of 'update_user_profile_bloc.dart';

sealed class UpdateUserProfileEvent extends Equatable {
  const UpdateUserProfileEvent();

  @override
  List<Object?> get props => [];
}

class OnUpdateUserProfileEvent extends UpdateUserProfileEvent {
  const OnUpdateUserProfileEvent({
    required this.username,
    required this.currencyCode,
    required this.country,
    this.profilePicture,
  });

  final String username;
  final String currencyCode;
  final String country;
  final XFile? profilePicture;

  @override
  List<Object?> get props => [
        username,
        country,
        currencyCode,
        profilePicture,
      ];
}
