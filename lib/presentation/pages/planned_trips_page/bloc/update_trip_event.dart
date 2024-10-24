part of 'update_trip_bloc.dart';

class UpdateTripEvent extends Equatable {
  const UpdateTripEvent(this.tripId, this.entity);

  final String tripId;
  final CreateTripEntity entity;

  @override
  List<Object?> get props => [];
}
