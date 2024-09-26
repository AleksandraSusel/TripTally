import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';

class ExpenseBorderContainer extends StatelessWidget {
  const ExpenseBorderContainer({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      margin: const EdgeInsets.symmetric(horizontal: AppDimensions.d16) + const EdgeInsets.only(top: AppDimensions.d6),
      decoration: BoxDecoration(
        border: Border.all(
          color: context.thc.primary,
          width: 0.8,
          strokeAlign: BorderSide.strokeAlignOutside,
        ),
        borderRadius: BorderRadius.circular(AppDimensions.d12),
      ),
      child: child,
    );
  }
}
