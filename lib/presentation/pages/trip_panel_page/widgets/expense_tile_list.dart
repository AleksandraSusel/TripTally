import 'package:trip_tally/domain/entities/expenses/expense_entity.dart';
import 'package:trip_tally/presentation/theme/app_paths.dart';

List<ExpenseEntity> getExpenseTiles() {
  return [
    const ExpenseEntity(
      name: 'Food',
      date: '22.02.2023',
      amount: 200,
      currency: r'$',
      tripId: '',
      categoryId: AppPaths.restaurant,
    ),
    const ExpenseEntity(
      name: 'Ferry',
      date: '22.02.2023',
      currency: r'$',
      amount: 100,
      categoryId: AppPaths.shipM3,
      tripId: '',
    ),
    const ExpenseEntity(
      name: 'Food',
      date: '22.02.2023',
      currency: r'$',
      amount: 200,
      categoryId: AppPaths.statistic,
      tripId: '',
    ),
    const ExpenseEntity(
      name: 'Food',
      date: '22.02.2023',
      currency: r'$',
      amount: 200,
      categoryId: AppPaths.statistic,
      tripId: '',
    ),
    const ExpenseEntity(
      name: 'Food',
      date: '22.02.2023',
      currency: r'$',
      amount: 200,
      categoryId: AppPaths.statistic,
      tripId: '',
    ),
    const ExpenseEntity(
      name: 'Food',
      date: '22.02.2023',
      currency: r'$',
      amount: 200,
      categoryId: AppPaths.statistic,
      tripId: '',
    ),
    const ExpenseEntity(
      name: 'Food',
      date: '22.02.2023',
      currency: r'$',
      amount: 200,
      categoryId: AppPaths.statistic,
      tripId: '',
    ),
  ];
}
