import 'package:dailyapps_sso/layers/technical/configuration/app_config.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AppConfig', () {
    test('has no api base url until one is injected with --dart-define', () {
      expect(AppConfig.hasApiBaseUrl, isFalse);
      expect(AppConfig.apiBaseUrl, isEmpty);
    });
  });
}
