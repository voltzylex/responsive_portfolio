import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_portfolio/home_page.dart';
import 'package:responsive_portfolio/route/routes_config.dart';
import 'package:responsive_portfolio/splash_provider.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {

        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.access_alarm,
                  size: 100,
                  color: Colors.amber,
                ),
                LinearProgressIndicator(),
                ElevatedButton(onPressed: () {
                 HomePage(
                   name: "Sammer bhaiya"
                 ).go(context);
                }, child: Text("Provider"),),
              ],
            ),
          ),


    );
  }
}
