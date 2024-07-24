import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';

class AccountFormContainer extends StatelessWidget {
  const AccountFormContainer({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      padding: const EdgeInsets.symmetric(
            horizontal: AppDimensions.d28,
          ) +
          const EdgeInsets.only(
            top: AppDimensions.d32,
            bottom: AppDimensions.d12,
          ),
      margin: const EdgeInsets.symmetric(horizontal: AppDimensions.d30),
      constraints: const BoxConstraints(
        minHeight: AppDimensions.d550,
      ),
      decoration: BoxDecoration(
        color: context.thc.surface,
        borderRadius: BorderRadius.circular(AppDimensions.d12),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 1),
            blurRadius: AppDimensions.d2,
            color: context.thc.shadow.withOpacity(0.3),
          ),
          BoxShadow(
            offset: const Offset(0, 2),
            blurRadius: AppDimensions.d6,
            spreadRadius: AppDimensions.d2,
            color: context.thc.shadow.withOpacity(0.15),
          ),
        ],
      ),
      child: child,
    );
  }
}
