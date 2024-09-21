import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_colors.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/svg_asset.dart';

class DoubleFloatingActionButtons extends StatelessWidget {
  const DoubleFloatingActionButtons({
    required this.rightOnPressed,
    required this.leftOnPressed,
    required this.rightActionText,
    required this.leftActionText,
    required this.rightActionIcon,
    required this.leftActionIcon,
    super.key,
    this.padding,
    this.rightActionKey,
    this.leftActionKey,
  });

  final String rightActionText;
  final String rightActionIcon;
  final Key? rightActionKey;
  final VoidCallback rightOnPressed;
  final String leftActionText;
  final String leftActionIcon;
  final Key? leftActionKey;
  final VoidCallback leftOnPressed;
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
            key: leftActionKey,
            heroTag: 'leftAction',
            elevation: AppDimensions.d2,
            backgroundColor: AppColorsLight.surface3,
            clipBehavior: Clip.hardEdge,
            label: Row(
              children: [
                SvgAsset(
                  leftActionIcon,
                  height: 22,
                  width: 22,
                  color: context.thc.primary,
                ),
                const SizedBox(width: AppDimensions.d8),
                Text(
                  leftActionText,
                  style: context.tht.labelSmall?.copyWith(color: context.thc.primary),
                ),
              ],
            ),
            onPressed: leftOnPressed,
          ),
          const SizedBox(width: AppDimensions.d16),
          FloatingActionButton.extended(
            key: rightActionKey,
            heroTag: 'rightAction',
            elevation: AppDimensions.d2,
            backgroundColor: context.thc.tertiaryContainer,
            clipBehavior: Clip.hardEdge,
            label: Row(
              children: [
                SvgAsset(
                  rightActionIcon,
                  height: 22,
                  width: 22,
                  color: context.thc.onTertiaryContainer,
                ),
                const SizedBox(width: AppDimensions.d8),
                Text(
                  rightActionText,
                  style: context.tht.labelSmall?.copyWith(color: context.thc.onTertiaryContainer),
                ),
              ],
            ),
            onPressed: rightOnPressed,
          ),
        ],
      ),
    );
  }
}
