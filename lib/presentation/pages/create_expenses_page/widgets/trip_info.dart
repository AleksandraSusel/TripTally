import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/utils/enums/transport_type.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/svg_asset.dart';

class TripInfo extends StatelessWidget {
  const TripInfo({
    required this.destination,
    required this.date,
    required this.transportType,
    super.key,
  });

  final String destination;
  final String date;
  final TransportType transportType;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          destination,
          style: context.tht.titleLarge?.copyWith(fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: AppDimensions.d10),
        Text(
          date,
          style: context.tht.titleSmall,
        ),
        Row(
          children: [
            Text(
              context.tr.createExpensesPage_transportType,
              style: context.tht.titleSmall,
            ),
            const SizedBox(width: AppDimensions.d6),
            SvgAsset(
              transportType.icon,
              color: context.thc.shadow,
              height: 22,
            ),
          ],
        ),
      ],
    );
  }
}
