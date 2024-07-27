class EnvConfig {
  static const email = String.fromEnvironment('DEFINE_EMAIL');
  static const password = String.fromEnvironment('DEFINE_PASSWORD');
  static const apiUrl = String.fromEnvironment('DEFINE_API_URL');
  static const osmUrl = String.fromEnvironment('DEFINE_OSM_URL');
}

const packageName = 'com.example.trip_tally';
