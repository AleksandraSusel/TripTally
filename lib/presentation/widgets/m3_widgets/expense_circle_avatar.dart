import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/svg_asset.dart';

class ExpensesCircleAvatar extends StatelessWidget {
  const ExpensesCircleAvatar({required this.iconPath, super.key});

  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDimensions.d4),
      child: CircleAvatar(
        backgroundColor: context.thc.primaryContainer,
        child: SvgAsset(
          iconPath,
          color: context.thc.onPrimaryContainer,
        ),
      ),
    );
  }
}
