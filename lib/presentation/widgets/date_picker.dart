import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';

import '../theme/app_dimensions.dart';
import '../theme/app_paths.dart';

class DatePickerDemo extends StatefulWidget {
  const DatePickerDemo({super.key});

  @override
  State<DatePickerDemo> createState() => _DatePickerDemoState();
}

class _DatePickerDemoState extends State<DatePickerDemo> {
  DateTime? startDate;
  TimeOfDay? startTime;
  DateTime? endDate;
  TimeOfDay? endTime;
  bool isSelected = false;

  Future<void> _pickDateTimeRange(BuildContext context) async {
    final pickedStartDate = await showDatePicker(
      helpText: 'Pick the start date',
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2024),
      lastDate: DateTime(2030),
    );

    if (pickedStartDate == null) return;
    if (mounted) {
      final pickedEndDate = await showDatePicker(
        helpText: 'Pick the end date',
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
    }
  }

  @override
  Widget build(BuildContext context) => Column(
        children: <Widget>[
          Text(
            context.tr.newTripPage_selectDates,
            style: context.tht.headlineSmall,
          ),
          Padding(
            padding: const EdgeInsets.all(AppDimensions.d8),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: AppDimensions.d18),
                  child: GestureDetector(
                    onTap: () => _pickDateTimeRange(context),
                    child: isSelected == false
                        ? Padding(
                            padding: const EdgeInsets.all(AppDimensions.d8),
                            child: SvgPicture.asset(
                              AppPaths.callendar,
                              height: 40,
                            ),
                          )
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(AppPaths.flyStart),
                              const SizedBox(width: AppDimensions.d10),
                              Text(
                                DateFormat('dd-MM-yyy').format(startDate!),
                                style: context.tht.headlineSmall,
                              ),
                            ],
                          ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(AppDimensions.d8),
                  child: GestureDetector(
                    onTap: () => _pickDateTimeRange(context),
                    child: isSelected == false
                        ? const SizedBox(width: AppDimensions.d10)
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(AppPaths.flyEnd),
                              const SizedBox(width: AppDimensions.d10),
                              Text(
                                DateFormat('dd-MM-yyy').format(endDate!),
                                style: context.tht.headlineSmall,
                              ),
                            ],
                          ),
                  ),
                ),
              ],
            ),
          ),
        ],
      );
}
