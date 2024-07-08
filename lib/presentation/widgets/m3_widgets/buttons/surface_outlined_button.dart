import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';

class SurfaceOutlinedButton extends StatelessWidget {
  const SurfaceOutlinedButton({
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
        backgroundColor: context.th.colorScheme.surface,
        overlayColor: context.th.colorScheme.onSurface,
      ),
      child: Text(
        text,
        style: context.tht.labelSmall?.copyWith(color: context.thc.primary),
      ),
    );
  }
}
