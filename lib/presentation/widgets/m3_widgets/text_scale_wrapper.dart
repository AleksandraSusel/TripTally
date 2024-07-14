import 'package:flutter/material.dart';

class TextScaleWrapper extends StatelessWidget {
  const TextScaleWrapper({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final originalData = MediaQuery.of(context);
    final clampedTextScaler = originalData.textScaler.clamp(
      minScaleFactor: 1,
      maxScaleFactor: 1.4,
    );

    final adjustedMediaQueryData = originalData.copyWith(textScaler: clampedTextScaler);

    return MediaQuery(
      data: adjustedMediaQueryData,
      child: child,
    );
  }
}
