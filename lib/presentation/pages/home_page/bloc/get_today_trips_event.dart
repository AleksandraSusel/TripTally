part of 'get_today_trips_bloc.dart';

sealed class GetTodayTripsEvent extends Equatable {
  const GetTodayTripsEvent();

  @override
  List<Object?> get props => [];
}

class OnGetTodayTripsEvent extends GetTodayTripsEvent {
  const OnGetTodayTripsEvent();
}
