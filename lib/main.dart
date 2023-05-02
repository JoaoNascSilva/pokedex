import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:pokedex_app/core/ui/app_theme.dart';
import 'package:pokedex_app/pages/home/home_page.dart';
import 'package:pokedex_app/pages/login/login_page.dart';
import 'package:pokedex_app/pages/splash/splash_route.dart';

void main() {
  Animate.restartOnHotReload = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.theme,
      routes: {
        '/': (_) => const SplashRoute(),
        '/login': (_) => const LoginPage(),
        '/home': (_) => const HomePage(),
      },
    );
  }
}
