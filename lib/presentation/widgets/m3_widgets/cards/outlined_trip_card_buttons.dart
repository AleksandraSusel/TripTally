import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/buttons/primary_elevated_button.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/buttons/warning_outlined_button.dart';

class OutlinedTripCardButtons extends StatelessWidget {
  const OutlinedTripCardButtons({
    required this.onPressedWarningOutlinedButton,
    required this.onPressedPrimaryElevatedButton,
    super.key,
  });

  final VoidCallback onPressedWarningOutlinedButton;
  final VoidCallback onPressedPrimaryElevatedButton;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppDimensions.d24,
        vertical: AppDimensions.d10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          WarningOutlinedButton(
            text: context.tr.outlinedTripCardButton_endTheTrip,
            onPressed: onPressedWarningOutlinedButton,
          ),
          PrimaryElevatedButton(
            text: context.tr.outlinedTripCardButton_addExpense,
            onPressed: onPressedPrimaryElevatedButton,
          ),
        ],
      ),
    );
  }
}
