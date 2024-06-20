import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/theme/theme_manager.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';

class TripTile extends StatelessWidget {
  const TripTile({
    required this.city,
    required this.expense,
    required this.date,
    super.key,
  });

  final String city;
  final String expense;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: AppDimensions.d30),
          child: Container(
            height: AppDimensions.d120,
            width: AppDimensions.d300,
            decoration: ThemeManager().sideShadow,
            child: Padding(
              padding: const EdgeInsets.all(AppDimensions.d8),
              child: Column(
                children: [
                  Text(city, style: context.tht.labelMedium),
                  const SizedBox(height: AppDimensions.d5),
                  Text(date, style: context.tht.headlineSmall),
                  const SizedBox(height: AppDimensions.d5),
                  Text(expense, style: context.tht.titleSmall),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
