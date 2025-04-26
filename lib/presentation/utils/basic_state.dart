import 'package:equatable/equatable.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';

abstract class BasicState<T> extends Equatable {
  const BasicState();
}

class InitialState<T> extends BasicState<T> {
  const InitialState();

  @override
  List<Object?> get props => [];
}

class FailureState<T> extends BasicState<T> {
  const FailureState(this.error);

  final Errors error;

  @override
  List<Object?> get props => [error];
}

class SuccessState<T> extends BasicState<T> {
  const SuccessState();

  @override
  List<Object?> get props => [];
}

class LoadingState<T> extends BasicState<T> {
  const LoadingState();

  @override
  List<Object?> get props => [];
}

class LoadedState<T> extends BasicState<T> {
  const LoadedState({required this.data});

  final T data;

  @override
  List<Object?> get props => [data];
}
