import 'package:intl/intl.dart';

const String datePattern = 'dd-MM-yyy';
const String patternMMMDY = 'MMM d y';
const String patternMMMY = 'MMM y';
const String patternYYMMDD = 'yyyy-MM-dd';
final DateFormat dateFormat = DateFormat(datePattern);
final DateFormat formatMMMDY = DateFormat(patternMMMDY);
final DateFormat formatMMMY = DateFormat(patternMMMY);
final DateFormat formatYYMMDD = DateFormat(patternYYMMDD);

String formatDates(String startDateStr, String endDateStr) {
  final DateTime? startDate = _parseDateWithFormats(startDateStr);
  final DateTime? endDate = _parseDateWithFormats(endDateStr);

  if (startDate == null || endDate == null) {
    return 'Invalid date format';
  }

  final DateFormat monthDayFormat = DateFormat('MMM d');
  final DateFormat yearFormat = DateFormat('yyyy');

  final String startMonthDay = monthDayFormat.format(startDate);
  final String endMonthDay = monthDayFormat.format(endDate);
  final String year = yearFormat.format(startDate).compareTo(yearFormat.format(endDate)) == 0
      ? yearFormat.format(startDate)
      : '${yearFormat.format(startDate)}/${yearFormat.format(endDate)}';

  if (DateFormat('MMM').format(startDate) == DateFormat('MMM').format(endDate)) {
    final String endDay = DateFormat('d').format(endDate);
    return '$startMonthDay-$endDay, $year';
  } else {
    return '$startMonthDay - $endMonthDay, $year';
  }
}

DateTime? _parseDateWithFormats(String dateStr) {
  final List<DateFormat> inputFormats = [
    DateFormat('dd-MM-yyyy'),
    DateFormat('MM-dd-yyyy'),
    DateFormat('yyyy-MM-dd'),
    DateFormat('yyyy-dd-MM'),
    DateFormat('dd-MM-yy'),
    DateFormat('MM-dd-yy'),
    DateFormat('yy-MM-dd'),
    DateFormat('yy-dd-MM'),
    DateFormat('dd.MM.yyyy'),
    DateFormat('MM.dd.yyyy'),
    DateFormat('yyyy.MM.dd'),
    DateFormat('yyyy.dd.MM'),
    DateFormat('dd.MM.yy'),
    DateFormat('MM.dd.yy'),
    DateFormat('yy.MM.dd'),
    DateFormat('yy.dd.MM'),
  ];
  return inputFormats.map((format) {
    try {
      return format.parseStrict(dateStr);
    } catch (_) {
      return null;
    }
  }).firstWhere((date) => date != null, orElse: () => null);
}

extension DateTimeExtension on DateTime {
  bool isSameDay(DateTime other) {
    return year == other.year && month == other.month && day == other.day;
  }

  String get toMMMDYFormat => formatMMMDY.format(this);
  String get toYYMMDDFormat => formatYYMMDD.format(this);
}
