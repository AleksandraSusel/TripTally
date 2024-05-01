import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';

class ResumeOfTripExpensesList extends StatelessWidget {
  const ResumeOfTripExpensesList({super.key, required this.expensesList});

  final List<Widget>? expensesList;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: AppDimensions.d38, left: AppDimensions.d8),
          child: Text('You have planned:'),
        ),
        expensesList == null
            ? Text(context.tr.resumeOfTripExpenses_YouDontHaveAnyTrips)
            : ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: expensesList!.length,
                itemBuilder: (BuildContext context, int index) {
                  return expensesList![index];
                },
              ),
      ],
    );
  }
}
