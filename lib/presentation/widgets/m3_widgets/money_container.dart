import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/theme/theme_manager.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';

enum MoneyContainerColorTheme {
  surface,
  warning,
  tertiary,
}

extension MoneyContainerColorThemeExtension on MoneyContainerColorTheme {
  Color getFontColor(BuildContext context) => switch (this) {
        MoneyContainerColorTheme.surface => context.thc.primary,
        MoneyContainerColorTheme.warning => context.thc.onErrorContainer,
        MoneyContainerColorTheme.tertiary => context.thc.onTertiaryContainer,
      };

  Color getContainerColor(BuildContext context) => switch (this) {
        MoneyContainerColorTheme.surface => context.thc.surface,
        MoneyContainerColorTheme.warning => context.thc.errorContainer,
        MoneyContainerColorTheme.tertiary => context.thc.tertiaryContainer,
      };
}

class MoneyContainer extends StatelessWidget {
  const MoneyContainer({
    required this.amount,
    required this.currency,
    this.height = AppDimensions.d36,
    this.width = AppDimensions.d80,
    this.theme = MoneyContainerColorTheme.surface,
    super.key,
  });

  final int amount;
  final String currency;
  final MoneyContainerColorTheme theme;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: AppDimensions.d4,
          horizontal: AppDimensions.d10,
        ),
        constraints: BoxConstraints(
          minHeight: height,
          minWidth: width,
          maxWidth: 180,
        ),
        alignment: Alignment.center,
        decoration: ShapeDecoration(
          color: theme.getContainerColor(context),
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
            color: theme.getFontColor(context),
            fontWeight: FontWeight.w900,
          ),
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
