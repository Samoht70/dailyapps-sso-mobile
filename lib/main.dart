import 'package:dailyapps_sso/app.dart';
import 'package:dailyapps_sso/layers/technical/configuration/app_config.dart';
import 'package:flutter/widgets.dart';

void main() {
  assert(
    AppConfig.hasApiBaseUrl,
    'Missing --dart-define=API_BASE_URL',
  );
  runApp(const DailyAppsSsoApp());
}
