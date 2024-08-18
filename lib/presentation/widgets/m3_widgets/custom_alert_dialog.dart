import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_colors.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog({
    required this.title,
    required this.info,
    required this.actionButtonText,
    required this.abortButtonText,
    this.isWarningAction = true,
    super.key,
  });

  final String title;
  final String info;
  final String actionButtonText;
  final String abortButtonText;
  final bool isWarningAction;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: context.thc.surfaceDim,
      title: Text(
        title,
        style: context.tht.titleLarge,
      ),
      content: Text(
        info,
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
            AutoRouter.of(context).maybePop();
          },
        ),
        TextButton(
          child: Text(
            actionButtonText,
            style: context.tht.labelMedium?.copyWith(
              color: isWarningAction ? AppColorsLight.greenConfirmation : AppColorsLight.error40,
            ),
          ),
          onPressed: () {
            AutoRouter.of(context).maybePop();
          },
        ),
      ],
    );
  }
}
