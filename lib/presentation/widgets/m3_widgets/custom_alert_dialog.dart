import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_colors.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog({
    required this.title,
    required this.actionButtonText,
    required this.abortButtonText,
    required this.onConfirmPressed,
    this.isWarningAction = false,
    super.key,
    this.info,
  });

  final String title;
  final String? info;
  final String actionButtonText;
  final String abortButtonText;
  final bool isWarningAction;
  final VoidCallback onConfirmPressed;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: context.thc.surfaceDim,
      title: Text(
        title,
        style: context.tht.titleLarge,
      ),
      content: Text(
        info ?? '',
        style: context.tht.titleSmall,
      ),
      actions: <Widget>[
        TextButton(
          child: Text(
            abortButtonText,
            style: context.tht.labelMedium?.copyWith(
              color: context.thc.primary,
            ),
          ),
          onPressed: () {
            context.router.maybePop();
          },
        ),
        TextButton(
          onPressed: onConfirmPressed,
          child: Text(
            actionButtonText,
            style: context.tht.labelMedium?.copyWith(
              color: isWarningAction ? AppColorsLight.error40 : AppColorsLight.greenConfirmation,
            ),
          ),
        ),
      ],
    );
  }
}
