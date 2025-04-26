import 'package:equatable/equatable.dart';

sealed class CreateTripState extends Equatable {
  const CreateTripState();

  @override
  List<Object?> get props => [];
}

class Initial extends CreateTripState {}
