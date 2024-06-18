import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';

import '../theme/app_dimensions.dart';
import '../theme/theme_manager.dart';

class TripTile extends StatelessWidget {
  const TripTile({
    super.key,
    required this.city,
    required this.expense,
    required this.date,
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
                crossAxisAlignment: CrossAxisAlignment.center,
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
