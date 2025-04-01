import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_colors.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/svg_asset.dart';

class DoubleFloatingActionButtons extends StatelessWidget {
  const DoubleFloatingActionButtons({
    required this.trailingOnPressed,
    required this.leadingOnPressed,
    required this.trailingActionText,
    required this.leadingActionText,
    required this.trailingActionIcon,
    required this.leadingActionIcon,
    super.key,
    this.padding,
    this.trailingActionKey,
    this.leadingActionKey,
  });

  final String trailingActionText;
  final String trailingActionIcon;
  final Key? trailingActionKey;
  final VoidCallback trailingOnPressed;
  final String leadingActionText;
  final String leadingActionIcon;
  final Key? leadingActionKey;
  final VoidCallback leadingOnPressed;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton.extended(
            key: leadingActionKey,
            heroTag: 'leadingAction',
            elevation: AppDimensions.d2,
            backgroundColor: context.thc.tertiaryContainer,
            clipBehavior: Clip.hardEdge,
            label: Row(
              children: [
                SvgAsset(
                  leadingActionIcon,
                  height: 22,
                  width: 22,
                  color: context.thc.onTertiaryContainer,
                ),
                const SizedBox(width: AppDimensions.d8),
                Text(
                  leadingActionText,
                  style: context.tht.labelSmall?.copyWith(
                    color: context.thc.onTertiaryContainer,
                  ),
                ),
              ],
            ),
            onPressed: leadingOnPressed,
          ),
          const SizedBox(width: AppDimensions.d16),
          FloatingActionButton.extended(
            key: trailingActionKey,
            heroTag: 'trailingAction',
            elevation: AppDimensions.d2,
            backgroundColor: AppColorsLight.surface3,
            clipBehavior: Clip.hardEdge,
            label: Row(
              children: [
                SvgAsset(
                  trailingActionIcon,
                  height: 22,
                  width: 22,
                  color: context.thc.primary,
                ),
                const SizedBox(width: AppDimensions.d8),
                Text(
                  trailingActionText,
                  style: context.tht.labelSmall?.copyWith(color: context.thc.primary),
                ),
              ],
            ),
            onPressed: trailingOnPressed,
          ),
        ],
      ),
    );
  }
}
