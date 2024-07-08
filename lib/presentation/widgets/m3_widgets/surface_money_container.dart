import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/theme/theme_manager.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';

class SurfaceMoneyContainer extends StatelessWidget {
  const SurfaceMoneyContainer({
    required this.amount,
    required this.currency,
    super.key,
  });

  final int amount;
  final String currency;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(top: AppDimensions.d16),
      height: 36,
      width: 80,
      decoration: ShapeDecoration(
        color: context.thc.surfaceContainerHigh,
        shape: const StadiumBorder(),
        shadows: [
          BoxShadow(
            blurRadius: AppDimensions.d2,
            offset: const Offset(AppDimensions.zero, AppDimensions.d1),
            color: context.thc.shadow.withOpacity(0.3),
          ),
          BoxShadow(
            blurRadius: AppDimensions.d3,
            spreadRadius: AppDimensions.d1,
            offset: const Offset(AppDimensions.zero, AppDimensions.d1),
            color: context.thc.shadow.withOpacity(0.15),
          ),
        ],
      ),
      child: Text(
        '$amount $currency',
        style: context.tht.displayMedium?.copyWith(
          fontFamily: ThemeManager.robotoSerifFont,
          color: context.thc.primary,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}
