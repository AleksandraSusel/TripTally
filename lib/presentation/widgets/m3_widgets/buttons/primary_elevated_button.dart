import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';

class PrimaryElevatedButton extends StatelessWidget {
  const PrimaryElevatedButton({
    required this.text,
    required this.onPressed,
    super.key,
  });

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: context.th.colorScheme.primary,
        overlayColor: context.th.colorScheme.onPrimary,
      ),
      child: Text(
        text,
        style: context.tht.labelSmall?.copyWith(color: context.thc.onPrimary),
      ),
    );
  }
}
