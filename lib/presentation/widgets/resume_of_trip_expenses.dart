import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';

class ResumeOfTripExpensesList extends StatelessWidget {
  const ResumeOfTripExpensesList({required this.expensesList, super.key});

  final List<Widget>? expensesList;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: AppDimensions.d38, left: AppDimensions.d8),
          child: Text('You have planned:'),
        ),
        if (expensesList == null)
          Text(context.tr.resumeOfTripExpenses_YouDontHaveAnyTrips)
        else
          ListView.builder(
            itemCount: expensesList!.length,
            itemBuilder: (BuildContext context, int index) {
              return expensesList![index];
            },
          ),
      ],
    );
  }
}
