import 'package:flutter/material.dart';
import 'package:responsive_portfolio/res/constants.dart';
import 'package:responsive_portfolio/view/intro/animated_image_container.dart';
import 'package:responsive_portfolio/view/splash/components/animated_loading.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedImageContainer(
              height: 100,
              width: 100,
            ),
            SizedBox(height: defaultPadding / 2),
            AnimatedLoading(),
          ],
        ),
      ),
    );
  }
}
