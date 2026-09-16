abstract final class AppConfig {
  static const String apiBaseUrl = String.fromEnvironment('API_BASE_URL');

  static const bool hasApiBaseUrl = bool.hasEnvironment('API_BASE_URL');
}
