import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_colors.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/utils/validators.dart';
import 'package:trip_tally/presentation/widgets/custom_text_field.dart';

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog({
    required this.title,
    required this.actionButtonText,
    required this.abortButtonText,
    required this.onConfirmPressed,
    required this.withTextField,
    this.isWarningAction = true,
    super.key,
    this.labelText,
    this.info,
  });

  final String title;
  final String? info;
  final String actionButtonText;
  final String abortButtonText;
  final bool isWarningAction;
  final VoidCallback onConfirmPressed;
  final bool withTextField;
  final String? labelText;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: context.thc.surfaceDim,
      title: Text(
        title,
        style: context.tht.titleLarge,
      ),
      content: withTextField == false
          ? Text(
              info ?? '',
              style: context.tht.titleSmall,
            )
          : CustomTextField(
              labelText: labelText ?? '',
              validator: (String? value) {
                return Validator.isFieldEmpty(value: value, context: context);
              },
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
          child: Text(
            actionButtonText,
            style: context.tht.labelMedium?.copyWith(
              color: isWarningAction ? AppColorsLight.error40 : AppColorsLight.greenConfirmation,
            ),
          ),
          onPressed: () {
            context.router.maybePop();
            onConfirmPressed();
          },
        ),
      ],
    );
  }
}
