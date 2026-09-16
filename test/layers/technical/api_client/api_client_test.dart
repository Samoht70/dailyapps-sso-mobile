import 'package:dailyapps_sso/layers/technical/api_client/api_client.dart';
import 'package:dailyapps_sso/layers/technical/configuration/app_config.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ApiClient', () {
    test('reads its base url from the injected configuration', () {
      final Dio dio = ApiClient.createDio();

      expect(dio.options.baseUrl, AppConfig.apiBaseUrl);
    });

    test('negotiates json on every request', () {
      final Dio dio = ApiClient.createDio();

      expect(dio.options.headers['Accept'], 'application/json');
      expect(dio.options.headers['Content-Type'], 'application/json');
    });

    test('exposes a laravel rest api client', () {
      expect(ApiClient.create(), isNotNull);
    });
  });
}
