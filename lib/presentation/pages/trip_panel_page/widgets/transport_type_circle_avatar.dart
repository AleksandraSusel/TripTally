import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/utils/enums/transport_type.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/svg_asset.dart';

class TransportTypeCircleAvatar extends StatelessWidget {
  const TransportTypeCircleAvatar({required this.transportType, super.key});

  final TransportType transportType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDimensions.d4),
      child: CircleAvatar(
        backgroundColor: context.thc.primaryContainer,
        child: SvgAsset(
          transportType.icon,
          color: context.thc.onPrimaryContainer,
        ),
      ),
    );
  }
}
