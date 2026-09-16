import 'package:dailyapps_sso/layers/technical/configuration/app_config.dart';
import 'package:dio/dio.dart';
import 'package:laravel_rest_api_flutter/data/core/http_client/rest_api_http_client.dart';
import 'package:laravel_rest_api_flutter/data/rest_api_client/api_http_client.dart.dart';

abstract final class ApiClient {
  static const Duration _timeout = Duration(seconds: 30);

  static Dio createDio() => Dio(
        BaseOptions(
          baseUrl: AppConfig.apiBaseUrl,
          headers: const <String, String>{
            'Accept': 'application/json',
            'Content-Type': 'application/json',
          },
          connectTimeout: _timeout,
          receiveTimeout: _timeout,
        ),
      );

  static RestApiClient create() => ApiHttpClient(dio: createDio());
}
