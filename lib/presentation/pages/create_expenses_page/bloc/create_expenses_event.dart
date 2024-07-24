import 'package:equatable/equatable.dart';

class CreateExpensesEvent extends Equatable {
  const CreateExpensesEvent();

  @override
  List<Object?> get props => [];
}

class CreateExpenseEvent extends CreateExpensesEvent {
  const CreateExpenseEvent({
    required this.name,
    required this.date,
    required this.amount,
    required this.currency,
    required this.tripId,
  });

  final String name;
  final String date;
  final double amount;
  final String currency;
  final String tripId;

  @override
  List<Object?> get props => [];
}
