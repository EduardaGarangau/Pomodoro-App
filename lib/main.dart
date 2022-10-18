import 'package:flutter/material.dart';
import 'package:pomodoro_app/screens/home_screen.dart';
import 'package:pomodoro_app/screens/settings_screen.dart';
import 'package:pomodoro_app/screens/splash_screen.dart';
import 'package:pomodoro_app/stores/pomodoro_store.dart';
import 'package:pomodoro_app/utils/routes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => PomodoroStore(),
      child: MaterialApp(
        title: 'Pomodoro App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
        ),
        home: const HomeScreen(),
        routes: {
          Routes.SETTINGS: (context) => const SettingsScreen(),
        },
      ),
    );
  }
}
