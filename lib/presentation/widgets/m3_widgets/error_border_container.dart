import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';

class ErrorBorderContainer extends StatelessWidget {
  const ErrorBorderContainer({required this.child, required this.showError, super.key});

  final Widget child;
  final bool showError;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: AppDimensions.d16),
      decoration: BoxDecoration(
        border: Border.all(color: showError ? context.thc.error : Colors.transparent),
        borderRadius: BorderRadius.circular(AppDimensions.d16),
      ),
      child: child,
    );
  }
}
