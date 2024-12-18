import 'package:flutter/material.dart';
import 'package:workouts_theme_settings/componets/custom_appbar.dart';
import 'package:workouts_theme_settings/pages/home_page.dart';
import 'package:workouts_theme_settings/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
        valueListenable: themeNotifier,
        builder: (context, themeMode, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: lightMode,
            darkTheme: darkMode,
            themeMode: themeMode,
            home: const HomePage(),
          );
        });
  }
}
