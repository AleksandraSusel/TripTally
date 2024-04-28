import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/widgets/planned_expenses.dart';

import '../theme/app_paths.dart';

class PlannedExpensesList extends StatelessWidget {
  const PlannedExpensesList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(AppDimensions.d8),
      child: Column(
        children: [
          PlannedExpenses(expense: 'Shopping', money: '300', currency: '\$', icon: AppPaths.package),
          PlannedExpenses(expense: 'Tickets', money: '100', currency: '\$', icon: AppPaths.callendar),
          PlannedExpenses(expense: 'Ship', money: '1000', currency: '\$', icon: AppPaths.ship),
          PlannedExpenses(expense: 'Flying', money: '200', currency: '\$', icon: AppPaths.flyStart),
        ],
      ),
    );
  }
}
