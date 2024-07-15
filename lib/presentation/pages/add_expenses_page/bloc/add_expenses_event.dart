import 'package:equatable/equatable.dart';

class AddExpensesEvent extends Equatable {
  const AddExpensesEvent();

  @override
  List<Object?> get props => [];
}

class AddExpenseEvent extends AddExpensesEvent {
  const AddExpenseEvent({
    required this.name,
    required this.date,
    required this.amount,
    required this.currency,
    required this.tripId,
    required this.userId,
  });

  final String name;
  final String date;
  final double amount;
  final String currency;
  final String tripId;
  final String userId;

  @override
  List<Object?> get props => [];
}
