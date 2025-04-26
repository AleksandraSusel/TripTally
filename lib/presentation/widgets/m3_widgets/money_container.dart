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
              offset: const Offset(0.5, 1.5),
              color: context.thc.shadow.withValues(alpha: .18),
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
    required this.insertedAmount,
    required this.maxAmount,
    required this.currency,
    this.height = AppDimensions.d36,
    this.width = AppDimensions.d80,
    super.key,
  });

  final double insertedAmount;
  final double maxAmount;
  final String currency;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    final bool spendMoreThanExpected = insertedAmount > maxAmount;

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
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppDimensions.d6),
            side: BorderSide(width: 0.6, color: context.thc.shadow),
          ),
        ),
        child: Text(
          MoneyFormat.formatPositiveAmountWithPlanned(
            plannedAmount: insertedAmount,
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
