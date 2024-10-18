part of 'delete_trip_bloc.dart';

class DeleteTripEvent extends Equatable {
  const DeleteTripEvent(this.tripId);

  final String tripId;

  @override
  List<Object?> get props => [tripId];
}
