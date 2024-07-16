import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/theme/app_paths.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({
    required this.onStartDateChanged,
    required this.onEndDateChanged,
    super.key,
  });

  final ValueChanged<DateTime> onStartDateChanged;
  final ValueChanged<DateTime> onEndDateChanged;

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  DateTime startDate = DateTime.now();
  DateTime endDate = DateTime.now();
  bool isSelected = false;

  Future<void> _pickDateTimeRange(BuildContext context) async {
    final pickedStartDate = await showDatePicker(
      helpText: context.tr.newTripPage_PickTheStartDate,
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2024),
      lastDate: DateTime(2030),
    );

    if (pickedStartDate == null) return;
    if (context.mounted) {
      final pickedEndDate = await showDatePicker(
        helpText: context.tr.newTripPage_PickTheEndDate,
        context: context,
        initialDate: pickedStartDate.add(const Duration(days: 1)),
        firstDate: pickedStartDate,
        lastDate: DateTime(2030),
      );
      if (pickedEndDate == null) return;
      setState(
        () {
          startDate = pickedStartDate;
          endDate = pickedEndDate;
          isSelected = true;
        },
      );
      widget.onStartDateChanged(startDate);
      widget.onEndDateChanged(endDate);
    }
  }

  @override
  Widget build(BuildContext context) => Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(AppDimensions.d8),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: AppDimensions.d18),
                  child: GestureDetector(
                    onTap: () => _pickDateTimeRange(context),
                    child: isSelected == false
                        ? Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(AppDimensions.d8),
                                child: SvgPicture.asset(
                                  AppPaths.calendar,
                                  height: AppDimensions.d40,
                                ),
                              ),
                              Text(
                                context.tr.newTripPage_selectDates,
                                style: context.tht.headlineSmall,
                              ),
                            ],
                          )
                        : Text(
                      '${DateFormat('yyyy-MM-dd').format(startDate)} - ${DateFormat('yyyy-MM-dd').format(endDate)}',
                            style: context.tht.headlineSmall,
                          ),
                  ),
                ),
              ],
            ),
          ),
        ],
      );
}
