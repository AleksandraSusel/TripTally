import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_colors.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog({
    required this.title,
    required this.info,
    required this.isConfirmation,
    required this.actionButtonText,
    super.key,
  });

  final String title;
  final String info;
  final String actionButtonText;
  final bool isConfirmation;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: context.thc.surfaceDim,
      title: Text(
        title,
        style: context.tht.titleLarge,
      ),
      content: Text(info, style: context.tht.titleSmall),
      actions: <Widget>[
        TextButton(
          child: Text(context.tr.generic_cancel, style: context.tht.labelMedium?.copyWith(color: context.thc.primary)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        TextButton(
          child: Text(
            actionButtonText,
            style: context.tht.labelMedium
                ?.copyWith(color: isConfirmation ? AppColorsLight.greenConfirmation : AppColorsLight.error40),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
