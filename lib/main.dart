import 'package:flutter/material.dart';
import 'package:responsive_portfolio/route/routes_config.dart';
import 'package:responsive_portfolio/splash_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      routerConfig: goRouter,
    );
  }
}
