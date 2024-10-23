part of 'create_trip_bloc.dart';

abstract class CreateTripEvent extends Equatable {
  const CreateTripEvent();

  @override
  List<Object?> get props => [];
}

class OnCreateTripEvent extends CreateTripEvent {
  const OnCreateTripEvent(this.entity);

  final CreateTripEntity entity;

  @override
  List<Object?> get props => [entity];
}
