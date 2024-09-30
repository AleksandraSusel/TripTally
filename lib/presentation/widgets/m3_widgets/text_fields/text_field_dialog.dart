import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_colors.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/utils/validators.dart';
import 'package:trip_tally/presentation/widgets/custom_text_field.dart';

class TextFieldDialog extends StatelessWidget {
  const TextFieldDialog({
    required this.title,
    required this.actionButtonText,
    required this.abortButtonText,
    required this.onConfirmPressed,
    required this.labelText,
    required this.controller,
    this.isWarningAction = false,
    super.key,
  });

  final String title;
  final String actionButtonText;
  final String abortButtonText;
  final bool isWarningAction;
  final VoidCallback onConfirmPressed;
  final String labelText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: context.thc.surfaceDim,
      title: Text(
        title,
        style: context.tht.titleLarge,
      ),
      content: CustomTextField(
        controller: controller,
        labelText: labelText,
        validator: (String? value) {
          return Validator.isFieldEmpty(context: context, value: value);
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
