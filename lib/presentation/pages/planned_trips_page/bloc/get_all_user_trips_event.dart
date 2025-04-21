part of 'get_all_user_trips_bloc.dart';

sealed class GetAllUserTripsEvent extends Equatable {
  const GetAllUserTripsEvent();

  @override
  List<Object?> get props => [];
}

class OnGetAllUserTripsEvent extends GetAllUserTripsEvent {
  const OnGetAllUserTripsEvent();

  @override
  List<Object?> get props => [];
}
