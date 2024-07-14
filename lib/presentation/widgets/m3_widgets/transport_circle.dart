import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/theme/theme_manager.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/utils/enums/transport_type.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/svg_asset.dart';

class TransportCircle extends StatelessWidget {
  const TransportCircle({
    required this.transportType,
    this.enableInnerShadow = false,
    super.key,
  });

  final TransportType transportType;
  final bool enableInnerShadow;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppDimensions.d8),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: enableInnerShadow ? Colors.transparent : context.thc.primary,
        boxShadow: enableInnerShadow ? ThemeManager.innerShadow(context) : null,
      ),
      child: SvgAsset(
        transportType.icon,
        color: context.thc.onPrimary,
      ),
    );
  }
}
