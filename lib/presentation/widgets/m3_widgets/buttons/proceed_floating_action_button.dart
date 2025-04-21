import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/theme/app_paths.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/svg_asset.dart';

class ProceedFloatingActionButton extends StatelessWidget {
  const ProceedFloatingActionButton({
    required this.onPressed,
    super.key,
    this.isLoading = false,
    this.text,
    this.icon,
  });

  final VoidCallback onPressed;
  final bool isLoading;
  final String? text;
  final String? icon;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      backgroundColor: context.thc.tertiaryContainer,
      clipBehavior: Clip.hardEdge,
      elevation: AppDimensions.d2,
      highlightElevation: AppDimensions.d4,
      label: isLoading
          ? Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppDimensions.d30),
              child: CircularProgressIndicator(
                constraints: const BoxConstraints(
                  minWidth: 30,
                  minHeight: 30,
                ),
                color: context.thc.onTertiaryContainer,
              ),
            )
          : Row(
              children: [
                Text(
                  text ?? context.tr.generic_continue,
                  style: context.tht.titleMedium,
                ),
                const SizedBox(width: AppDimensions.d8),
                SvgAsset(icon ?? AppPaths.nextArrow),
              ],
            ),
      onPressed: isLoading ? () {} : onPressed,
    );
  }
}
