import 'package:world_countries/world_countries.dart';

class MoneyFormat {
  const MoneyFormat._();

  static String formatNegativeAmount(double amount, String currency) {
    if (amount.abs() >= 50000) {
      final String formattedAmount = _removeTrailingWhenZero((amount.abs() / 1000).toStringAsFixed(1));
      return '-${formattedAmount}k $currency';
    } else {
      final String formattedAmount = _removeTrailingWhenZero(amount.toStringAsFixed(1));
      return '-$formattedAmount $currency';
    }
  }

  static String formatPositiveAmount(double amount, String currency) {
    if (amount.abs() >= 50000) {
      final String formattedAmount = _removeTrailingWhenZero((amount.abs() / 1000).toStringAsFixed(1));
      return '${formattedAmount}k $currency';
    } else {
      final String formattedAmount = _removeTrailingWhenZero(amount.toStringAsFixed(1));
      return '$formattedAmount $currency';
    }
  }

  static String _removeTrailingWhenZero(String amount) {
    if (amount.endsWith('.0')) {
      return amount.substring(0, amount.length - 2);
    }
    return amount;
  }

  static String countryCodeCurrency(String countryCode) {
    final fiatCurrency = WorldCountry.maybeFromCodeShort(countryCode)?.currencies?.first;
    final currency = fiatCurrency?.name;
    final symbol = fiatCurrency?.symbol;

    if (currency != null && symbol != null) {
      return '$currency($symbol)';
    } else {
      return '';
    }
  }
}
