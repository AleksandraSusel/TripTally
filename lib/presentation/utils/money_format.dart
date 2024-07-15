class MoneyFormat {
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
}
