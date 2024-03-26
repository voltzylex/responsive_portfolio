import 'package:flutter/material.dart';
import 'package:responsive_portfolio/res/constants.dart';
import 'package:responsive_portfolio/route/routes_config.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: goRouter,
      theme: ThemeData(
          scaffoldBackgroundColor: bgColor,
          primaryColor: primaryColor,
          colorScheme: const ColorScheme.dark().copyWith(
            background: bgColor,
          ),
          useMaterial3: true,
          textTheme: const TextTheme()),
    );
  }
}
