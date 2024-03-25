import 'package:flutter/material.dart';
import 'package:responsive_portfolio/res/constants.dart';

class Connectbutton extends StatelessWidget {
  const Connectbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Container(
        width: 150,
        height: 60,
        decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [pinkColor, blueColor],
            ),
            borderRadius: BorderRadius.circular(defaultPadding + 10)),
      ),
    );
  }
}
