import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/utils/date_format.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';

import 'package:trip_tally/presentation/widgets/m3_widgets/calendar/widgets/calendar_title.dart';

class RangeCalendar extends StatefulWidget {
  const RangeCalendar({required this.onDateRangeSelected, super.key});

  final void Function(DateTime?, DateTime?) onDateRangeSelected;

  @override
  RangeCalendarState createState() => RangeCalendarState();
}

class RangeCalendarState extends State<RangeCalendar> {
  DateTime? _selectedStartDate;
  DateTime? _selectedEndDate;
  DateTime _focusedDay = DateTime.now();

  DateTime get _firstDay => DateTime.now().subtract(const Duration(days: 365));

  DateTime get _lastDay => DateTime.now().add(const Duration(days: 365 * 25));

  @override
  Widget build(BuildContext context) => Container(
        margin: const EdgeInsets.symmetric(horizontal: AppDimensions.d16),
        padding: const EdgeInsets.only(bottom: AppDimensions.d10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppDimensions.d16),
          color: context.thc.surfaceContainerHighest,
        ),
        child: TableCalendar<DateTime>(
          locale: context.locale,
          calendarBuilders: CalendarBuilders(
            headerTitleBuilder: (ctx, date) => CalendarTitle(
              selectedStartDate: _selectedStartDate,
              selectedEndDate: _selectedEndDate,
              currentCalendarDate: date,
            ),
          ),
          pageJumpingEnabled: true,
          focusedDay: _focusedDay,
          rangeStartDay: _selectedStartDate,
          rangeEndDay: _selectedEndDate,
          daysOfWeekHeight: AppDimensions.d22,
          firstDay: _firstDay,
          lastDay: _lastDay,
          calendarStyle: CalendarStyle(
            rangeHighlightColor: context.thc.secondaryContainer,
            todayDecoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: context.thc.primary),
            ),
            todayTextStyle: context.tht.labelSmall?.copyWith(color: context.thc.primary) ?? const TextStyle(),
            selectedDecoration: BoxDecoration(
              shape: BoxShape.circle,
              color: context.thc.primary,
            ),
            tableBorder: TableBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          headerStyle: const HeaderStyle(formatButtonVisible: false),
          selectedDayPredicate: _onSelectedDayPredicate,
          onDaySelected: _onDaySelected,
        ),
      );

  bool _onSelectedDayPredicate(DateTime day) {
    if (_selectedStartDate != null && _selectedEndDate != null) {
      return day.isSameDay(_selectedStartDate!) || day.isSameDay(_selectedEndDate!);
    } else if (_selectedStartDate != null) {
      return day.isSameDay(_selectedStartDate!);
    }
    return false;
  }

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    setState(() {
      _focusedDay = focusedDay;

      if (_selectedStartDate != null && _selectedEndDate == null && _selectedStartDate!.isSameDay(selectedDay)) {
        _selectedStartDate = null;
      } else if (_selectedEndDate != null && _selectedEndDate!.isSameDay(selectedDay)) {
        _selectedEndDate = null;
      } else if (_selectedStartDate == null || (_selectedStartDate != null && _selectedEndDate != null)) {
        _selectedStartDate = selectedDay;
        _selectedEndDate = null;
      } else if (_selectedEndDate == null) {
        if (selectedDay.isBefore(_selectedStartDate!)) {
          _selectedEndDate = _selectedStartDate;
          _selectedStartDate = selectedDay;
        } else {
          _selectedEndDate = selectedDay;
        }
      }
      widget.onDateRangeSelected(_selectedStartDate, _selectedEndDate);
    });
  }
}
