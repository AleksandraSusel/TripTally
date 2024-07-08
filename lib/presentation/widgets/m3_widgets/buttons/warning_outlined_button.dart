import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';

class WarningOutlinedButton extends StatelessWidget {
  const WarningOutlinedButton({
    required this.text,
    required this.onPressed,
    super.key,
  });

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        backgroundColor: context.th.colorScheme.errorContainer,
        overlayColor: context.th.colorScheme.onErrorContainer,
      ),
      child: Text(
        text,
        style: context.tht.labelSmall?.copyWith(color: context.thc.onErrorContainer),
      ),
    );
  }
}
