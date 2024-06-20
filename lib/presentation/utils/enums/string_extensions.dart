extension CapitalizeString on String {
  String get capitalize => '${this[0].toUpperCase()}${substring(1).toLowerCase()}';
}

extension IsValidEmail on String {
  bool get isValidEmail {
    final regex = RegExp(r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+');
    return regex.hasMatch(this);
  }
}

extension StringToSnakeCase on String {
  String get toSnakeCase {
    String snakeCaseStr = replaceAllMapped(
      RegExp('([a-z])([A-Z])'),
      (Match match) => '${match[1]}_${match[2]}',
    );

    snakeCaseStr = snakeCaseStr.replaceAll(RegExp(r'[\s\-]+'), '_');

    return snakeCaseStr.toLowerCase();
  }
}
