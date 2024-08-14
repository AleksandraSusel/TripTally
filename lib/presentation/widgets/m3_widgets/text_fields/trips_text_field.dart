import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';

class TripsTextField extends StatelessWidget {
  const TripsTextField({required this.controller, super.key});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDimensions.d8),
      child: Container(
        decoration: BoxDecoration(
          color: context.thc.secondaryContainer,
          borderRadius: const BorderRadius.all(
            Radius.circular(AppDimensions.d26),
          ),
        ),
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
            labelText: context.tr.tripsHistoryPage_searchTrip,
            border: InputBorder.none,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: AppDimensions.d20,
            ),
          ),
        ),
      ),
    );
  }
}
