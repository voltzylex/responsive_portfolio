import 'package:flutter/material.dart';
import 'package:gradient_widgets/gradient_widgets.dart';
import 'package:responsive_portfolio/res/constants.dart';

class AnimatedLoading extends StatelessWidget {
  const AnimatedLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: defaultPadding * 5,
      child: TweenAnimationBuilder(
        tween: Tween(begin: 0.0, end: 1.0),
        duration: const Duration(seconds: 2),
        builder: (context, value, child) {
          // printLog(value.toString());
          return Column(
            children: [
              const SizedBox(
                height: defaultPadding / 2,
              ),
              // LinearProgressIndicator(
              //   value: value,
              // ),
              GradientProgressIndicator(
                value: value,
                gradient: const LinearGradient(colors: [pinkColor, blueColor]),
              ),
              Text(
                "${(value * 100).toInt()}%",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  shadows: textShadow,
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  List<Shadow> get textShadow {
    return const [
      Shadow(color: Colors.pink, blurRadius: 15, offset: Offset(2, 2)),
      Shadow(color: Colors.blue, blurRadius: 15, offset: Offset(-2, -2)),
    ];
  }
}
