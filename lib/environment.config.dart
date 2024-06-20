class EnvConfig {
  static const email = String.fromEnvironment('DEFINE_EMAIL');
  static const password = String.fromEnvironment('DEFINE_PASSWORD');
  static const apiUrl = String.fromEnvironment('DEFINE_API_URL');
}
