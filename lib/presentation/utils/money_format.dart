import 'package:world_countries/world_countries.dart';

class MoneyFormat {
  const MoneyFormat._();

  static String formatNegativeAmountCurrency(double amount, String currency) {
    if (amount.abs() >= 1000) {
      final String formattedAmount = _removeTrailingWhenZero((amount.abs() / 1000).toStringAsFixed(1));
      return '-${formattedAmount}k $currency';
    } else {
      final String formattedAmount = _removeTrailingWhenZero(amount.toStringAsFixed(1));
      return '-$formattedAmount $currency';
    }
  }

  static String formatPositiveAmountCurrency(double amount, String currency) {
    if (amount.abs() >= 1000) {
      final String formattedAmount = _removeTrailingWhenZero((amount.abs() / 1000).toStringAsFixed(1));
      return '${formattedAmount}k $currency';
    } else {
      final String formattedAmount = _removeTrailingWhenZero(amount.toStringAsFixed(1));
      return '$formattedAmount $currency';
    }
  }

  static String formatPositiveAmountWithPlanned({
    required double plannedAmount,
    required double maxAmount,
    required String currency,
  }) {
    final String formattedMaxAmount = _formatMoneyAmount(maxAmount);
    final String formattedPlannedAmount = _formatMoneyAmount(plannedAmount);
    return '$formattedPlannedAmount / $formattedMaxAmount $currency';
  }

  static String _formatMoneyAmount(double amount) {
    if (amount.abs() >= 50000) {
      return '${_removeTrailingWhenZero((amount.abs() / 1000).toStringAsFixed(1))} k';
    }
    return _removeTrailingWhenZero(amount.toStringAsFixed(1));
  }

  static String _removeTrailingWhenZero(String amount) {
    if (amount.endsWith('.0')) {
      return amount.substring(0, amount.length - 2);
    }
    return amount;
  }

  static String countryCodeCurrency(String countryCode) {
    final fiatCurrency = WorldCountry.maybeFromCodeShort(countryCode)?.currencies?.first;
    final currency = fiatCurrency?.code;
    final symbol = fiatCurrency?.symbol;

    if (currency != null && symbol != null) {
      return '$currency($symbol)';
    } else {
      return '';
    }
  }

  static String extractCurrencyCode(String currencyString) {
    if (currencyString.contains('(')) {
      final int index = currencyString.indexOf('(');
      return currencyString.substring(0, index);
    } else {
      return currencyString;
    }
  }
}
