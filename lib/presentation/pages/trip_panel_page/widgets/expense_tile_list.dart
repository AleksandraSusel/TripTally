import 'package:trip_tally/domain/entities/expenses/expense_entity.dart';
import 'package:trip_tally/domain/entities/price/price_entity.dart';
import 'package:trip_tally/presentation/theme/app_paths.dart';

List<ExpenseEntity> getExpenseTiles() {
  return [
    const ExpenseEntity(
      name: 'Food',
      date: '22.02.2023',
      tripId: '',
      categoryId: AppPaths.restaurant,
      price: PriceEntity(
        currency: r'$',
        amount: '200',
      ),
    ),
    const ExpenseEntity(
      name: 'Ferry',
      date: '22.02.2023',
      tripId: '',
      categoryId: AppPaths.shipM3,
      price: PriceEntity(
        currency: r'$',
        amount: '100',
      ),
    ),
    const ExpenseEntity(
      name: 'Food',
      date: '22.02.2023',
      categoryId: AppPaths.statistic,
      tripId: '',
      price: PriceEntity(
        currency: r'$',
        amount: '200',
      ),
    ),
    const ExpenseEntity(
      name: 'Food',
      date: '22.02.2023',
      tripId: '',
      categoryId: AppPaths.statistic,
      price: PriceEntity(
        currency: r'$',
        amount: '200',
      ),
    ),
    const ExpenseEntity(
      name: 'Food',
      date: '22.02.2023',
      tripId: '',
      categoryId: AppPaths.statistic,
      price: PriceEntity(
        currency: r'$',
        amount: '200',
      ),
    ),
    const ExpenseEntity(
      name: 'Food',
      date: '22.02.2023',
      tripId: '',
      categoryId: AppPaths.statistic,
      price: PriceEntity(
        currency: r'$',
        amount: '200',
      ),
    ),
    const ExpenseEntity(
      name: 'Food',
      date: '22.02.2023',
      tripId: '',
      categoryId: AppPaths.statistic,
      price: PriceEntity(
        currency: r'$',
        amount: '200',
      ),
    ),
  ];
}
