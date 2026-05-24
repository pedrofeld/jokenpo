import 'package:flutter/material.dart';
import 'package:jokenpo/pages/home_page.dart';
import 'package:jokenpo/pages/config_page.dart';
import 'package:jokenpo/pages/game_page.dart';
import 'package:jokenpo/pages/result_page.dart';
import 'package:jokenpo/utils/app_colors.dart';

void main() {
  runApp(const JokenpoApp());
}

class JokenpoApp extends StatelessWidget {
  const JokenpoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jokenpô',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
        scaffoldBackgroundColor: AppColors.background,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.teal,
          foregroundColor: Colors.white,
          elevation: 0,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/config': (context) => const ConfigPage(),
        '/game': (context) => const GamePage(),
        '/result': (context) => const ResultPage(),
      },
    );
  }
}
