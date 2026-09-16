import 'package:dailyapps_sso/layers/technical/theme/app_theme.dart';
import 'package:dailyapps_sso/layers/technical/theme/cubit/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DailyAppsSsoApp extends StatelessWidget {
  const DailyAppsSsoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ThemeCubit>(
      create: (_) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeMode>(
        builder: (context, themeMode) => MaterialApp(
          title: 'DailyApps SSO',
          theme: AppTheme.light,
          darkTheme: AppTheme.dark,
          themeMode: themeMode,
          home: const Scaffold(),
        ),
      ),
    );
  }
}
