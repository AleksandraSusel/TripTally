import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';

class ResumeOfTripExpensesList extends StatelessWidget {
  const ResumeOfTripExpensesList({super.key, required this.expensesList});

  final List<Widget> expensesList;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: AppDimensions.d38, left: AppDimensions.d8),
          child: Text('You have planned:'),
        ),
        ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: expensesList.length,
          // ignore: body_might_complete_normally_nullable
          itemBuilder: (BuildContext context, int index) {
            expensesList[index];
          },
        ),
      ],
    );
  }
}
