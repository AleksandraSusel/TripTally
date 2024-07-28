import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:trip_tally/presentation/utils/date_format.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';

class CalendarTitle extends StatelessWidget {
  const CalendarTitle({
    required this.currentCalendarDate,
    super.key,
    this.selectedStartDate,
    this.selectedEndDate,
  });

  final DateTime? selectedStartDate;
  final DateTime? selectedEndDate;
  final DateTime currentCalendarDate;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        if (selectedStartDate != null && selectedEndDate != null)
          Flexible(
            flex: 2,
            child: Text(
              formatDates(
                dateFormat.format(selectedStartDate!),
                dateFormat.format(selectedEndDate!),
              ),
              style: context.tht.labelMedium?.copyWith(color: context.thc.primary),
            ).animate().fadeIn(),
          )
        else if (selectedStartDate != null)
          Flexible(
            child: Text(
              formatMMMDY.format(selectedStartDate!),
              style: context.tht.labelMedium?.copyWith(color: context.thc.primary),
            ).animate().fadeIn(),
          )
        else
          const SizedBox.shrink(),
        Flexible(
          child: Text(
            formatMMMY.format(currentCalendarDate),
            style: context.tht.titleSmall,
          ),
        ).animate().fadeIn(),
      ],
    );
  }
}
