import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/utils/date_format.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/utils/enums/string_extensions.dart';
import 'package:trip_tally/presentation/utils/enums/transport_type.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/rectangular_country_flag.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/svg_asset.dart';

class TripInfo extends StatelessWidget {
  const TripInfo({
    required this.countryCode,
    required this.cityName,
    required this.dateFrom,
    required this.dateTo,
    required this.transportType,
    super.key,
  });

  final String cityName;
  final String countryCode;
  final String dateFrom;
  final String dateTo;
  final String transportType;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              cityName,
              style: context.tht.titleLarge?.copyWith(
                fontSize: AppDimensions.d22,
                fontWeight: FontWeight.w500,
                color: context.thc.primary,
              ),
            ),
            const SizedBox(width: AppDimensions.d10),
            RectangularCountryFlag(countryCode: countryCode),
          ],
        ),
        const SizedBox(height: AppDimensions.d10),
        Row(
          children: [
            Text(
              formatDates(dateFrom, dateTo),
              style: context.tht.titleSmall?.copyWith(fontWeight: FontWeight.w500),
            ),
            const SizedBox(width: AppDimensions.d10),
            Icon(
              Icons.calendar_month_rounded,
              size: AppDimensions.d18,
              color: context.thc.shadow,
            ),
          ],
        ),
        const SizedBox(height: AppDimensions.d10),
        Row(
          children: [
            Text(
              context.tr
                  .createExpensesPage_transportType(TransportType.parseTransportType(transportType).name.capitalize),
              style: context.tht.titleSmall,
            ),
            const SizedBox(width: AppDimensions.d6),
            SvgAsset(
              TransportType.parseTransportType(transportType).icon,
              color: context.thc.shadow,
              height: AppDimensions.d22,
            ),
          ],
        ),
      ],
    );
  }
}
