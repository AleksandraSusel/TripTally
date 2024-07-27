import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/utils/enums/string_extensions.dart';
import 'package:trip_tally/presentation/utils/enums/transport_type.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/svg_asset.dart';

class TransportButton extends StatelessWidget {
  const TransportButton({
    required this.transport,
    required this.isSelected,
    required this.onSelected,
    super.key,
  });

  final TransportType transport;
  final bool isSelected;
  final VoidCallback onSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDimensions.d4),
      child: ElevatedButton.icon(
        icon: SvgAsset(
          transport.icon,
          color: context.thc.primary,
          height: 20,
          width: 20,
        ),
        label: Text(
          transport.name.capitalize,
          style: context.tht.labelSmall,
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: isSelected ? context.thc.secondaryContainer : context.thc.surface,
          foregroundColor: isSelected ? context.thc.primary : context.thc.onSurface,
          elevation: isSelected ? AppDimensions.zero : AppDimensions.d2,
          side: BorderSide(
            color: isSelected ? context.thc.primary : Colors.transparent,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppDimensions.d8),
          ),
        ),
        onPressed: onSelected,
      ),
    );
  }
}
