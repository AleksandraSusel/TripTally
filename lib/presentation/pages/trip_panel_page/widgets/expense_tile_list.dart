import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/pages/trip_panel_page/widgets/expense_tile.dart';
import 'package:trip_tally/presentation/theme/app_paths.dart';

List<Widget> getExpenseTiles() {
  return [
    const ExpenseTile(
      expenseName: 'Food',
      date: '22.02.2023',
      currency: r'$',
      amount: 200,
      iconPath: AppPaths.restaurant,
    ),
    const ExpenseTile(
      expenseName: 'Ferry',
      date: '22.02.2023',
      currency: r'$',
      amount: 100,
      iconPath: AppPaths.shipM3,
    ),
    const ExpenseTile(
      expenseName: 'Food',
      date: '22.02.2023',
      currency: r'$',
      amount: 200,
      iconPath: AppPaths.statistic,
    ),
  ];
}
