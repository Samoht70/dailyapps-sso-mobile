import 'package:dailyapps_sso/layers/technical/theme/cubit/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ThemeCubit', () {
    test('starts on the system theme mode', () {
      expect(ThemeCubit().state, ThemeMode.system);
    });

    test('toggles to dark from the system theme mode', () {
      final ThemeCubit cubit = ThemeCubit();

      cubit.toggle();

      expect(cubit.state, ThemeMode.dark);
    });

    test('toggles back to light from dark', () {
      final ThemeCubit cubit = ThemeCubit()..toggle();

      cubit.toggle();

      expect(cubit.state, ThemeMode.light);
    });

    test('returns to the system theme mode', () {
      final ThemeCubit cubit = ThemeCubit()..toggle();

      cubit.useSystem();

      expect(cubit.state, ThemeMode.system);
    });
  });
}
