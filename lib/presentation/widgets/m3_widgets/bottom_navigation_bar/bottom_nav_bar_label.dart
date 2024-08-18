import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';

class BottomNavBarLabel extends StatelessWidget {
  const BottomNavBarLabel({
    required this.text,
    required this.isActive,
    super.key,
  });

  final String text;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: isActive
          ? context.tht.labelMedium
          : context.tht.labelMedium?.copyWith(
              color: context.thc.outline,
            ),
    );
  }
}
