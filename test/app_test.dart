import 'package:dailyapps_sso/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('follows the system theme mode on boot',
      (WidgetTester tester) async {
    await tester.pumpWidget(const DailyAppsSsoApp());

    final MaterialApp app = tester.widget<MaterialApp>(find.byType(MaterialApp));

    expect(app.themeMode, ThemeMode.system);
    expect(app.theme, isNotNull);
    expect(app.darkTheme, isNotNull);
    expect(find.byType(Scaffold), findsOneWidget);
  });
}
