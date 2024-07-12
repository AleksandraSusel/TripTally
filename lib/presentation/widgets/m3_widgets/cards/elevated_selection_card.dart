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
    return ConstrainedBox(
      constraints: const BoxConstraints(
        minWidth: AppDimensions.d256,
        maxHeight: AppDimensions.d80,
      ),
      child: Card(
        elevation: 2,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: AppDimensions.d16, top: AppDimensions.d10, bottom: AppDimensions.d10),
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
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            ClipRRect(
              clipBehavior: Clip.hardEdge,
              borderRadius: const BorderRadius.horizontal(
                right: Radius.circular(AppDimensions.d12),
              ),
              child: Container(
                constraints: const BoxConstraints(
                  minWidth: AppDimensions.d80,
                  minHeight: AppDimensions.d80,
                ),
                color: iconBGColor,
                child: Padding(
                  padding: const EdgeInsets.all(AppDimensions.d14),
                  child: SvgAsset(
                    iconAsset,
                    color: context.thc.onSurface,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
