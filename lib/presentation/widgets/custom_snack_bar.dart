import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/theme/app_paths.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/svg_asset.dart';

enum SnackbarType {
  success(AppPaths.successCheck),
  error(AppPaths.warningSign);

  const SnackbarType(this.icon);

  final String icon;
}

void showSnackBar(
  BuildContext context,
  String text, {
  int seconds = 2,
  SnackbarType type = SnackbarType.error,
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      duration: Duration(seconds: seconds),
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Text(
              text,
              style: context.tht.labelMedium?.copyWith(color: context.thc.onPrimary),
            ),
          ),
          const SizedBox(width: AppDimensions.d24),
          SvgAsset(type.icon, height: AppDimensions.d32),
        ],
      ),
    ),
  );
}
