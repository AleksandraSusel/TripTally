import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/svg_asset.dart';

class ElevatedSelectionCard extends StatelessWidget {
  const ElevatedSelectionCard({
    required this.title,
    required this.subtitle,
    required this.iconBGColor,
    required this.iconAsset,
    super.key,
  });

  final String title;
  final String subtitle;
  final Color iconBGColor;
  final String iconAsset;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: IntrinsicHeight(
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: AppDimensions.d16,
                  top: AppDimensions.d10,
                  bottom: AppDimensions.d10,
                  right: AppDimensions.d8,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: context.tht.labelMedium,
                    ),
                    ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: AppDimensions.d248),
                      child: Text(
                        subtitle,
                        style: context.tht.titleSmall,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 6,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: iconBGColor,
                borderRadius: const BorderRadius.horizontal(
                  right: Radius.circular(AppDimensions.d12),
                ),
              ),
              padding: const EdgeInsets.all(AppDimensions.d14),
              child: Center(
                child: SvgAsset(
                  iconAsset,
                  color: context.thc.onSurface,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}