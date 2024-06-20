import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/theme/app_paths.dart';
import 'package:trip_tally/presentation/widgets/planned_expense.dart';

class PlannedExpensesList extends StatelessWidget {
  const PlannedExpensesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDimensions.d30),
      child: SizedBox(
        height: 400,
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) => const PlannedExpense(
            expense: 'Shopping',
            money: '300',
            currency: r'$',
            icon: AppPaths.package,
          ),
        ),
      ),
    );
  }
}
