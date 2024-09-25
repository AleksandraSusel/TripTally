import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/theme/theme_manager.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/utils/money_format.dart';

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

  final double amount;
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
          MoneyFormat.formatPositiveAmountCurrency(amount, currency),
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

class BalanceMoneyContainer extends StatelessWidget {
  const BalanceMoneyContainer({
    required this.plannedAmount,
    required this.maxAmount,
    required this.currency,
    this.height = AppDimensions.d36,
    this.width = AppDimensions.d80,
    super.key,
  });

  final double plannedAmount;
  final double maxAmount;
  final String currency;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    final bool spendMoreThanExpected = plannedAmount > maxAmount;

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
          color: spendMoreThanExpected
              ? MoneyContainerColorTheme.warning.getContainerColor(context)
              : MoneyContainerColorTheme.tertiary.getContainerColor(context),
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
          MoneyFormat.formatPositiveAmountWithPlanned(
            plannedAmount: plannedAmount,
            maxAmount: maxAmount,
            currency: currency,
          ),
          style: context.tht.displayMedium?.copyWith(
            fontFamily: ThemeManager.robotoSerifFont,
            color: context.thc.shadow,
            fontWeight: FontWeight.w900,
          ),
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
