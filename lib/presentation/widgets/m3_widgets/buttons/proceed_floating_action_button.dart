import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/theme/app_paths.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/svg_asset.dart';

class ProceedFloatingActionButton extends StatelessWidget {
  const ProceedFloatingActionButton({
    required this.onPressed,
    super.key,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      backgroundColor: context.thc.tertiaryContainer,
      clipBehavior: Clip.hardEdge,
      label: Row(
        children: [
          Text(
            context.tr.generic_continue,
            style: context.tht.titleMedium,
          ),
          const SizedBox(width: AppDimensions.d8),
          const SvgAsset(AppPaths.nextArrow),
        ],
      ),
      onPressed: onPressed,
    );
  }
}
