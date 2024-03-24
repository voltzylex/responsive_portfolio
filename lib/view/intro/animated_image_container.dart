import 'package:flutter/material.dart';
import 'package:responsive_portfolio/res/constants.dart';
import 'package:responsive_portfolio/res/widgets/design.dart';

class AnimatedImageContainer extends StatefulWidget {
  const AnimatedImageContainer({super.key});

  @override
  State<AnimatedImageContainer> createState() => _AnimatedImageContainerState();
}

class _AnimatedImageContainerState extends State<AnimatedImageContainer> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Durations.extralong4,
    )..repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _animationController,
        builder: (context, child) {
          // printLog("Animated controller value is ${_animationController.value}");
          final value = _animationController.value;
          return Transform.translate(
            offset: Offset(0, 10 * value),
            child: Container(
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [pinkColor, blueColor],
                  ),
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: const [
                    BoxShadow(
                      color: pinkColor,
                      blurRadius: 20,
                      offset: Offset(-2, -2),
                    ),
                    BoxShadow(color: blueColor, blurRadius: 20, offset: Offset(2, 2)),
                  ]),
              height: 300,
              width: 250,
              padding: const EdgeInsets.all(defaultPadding / 4),
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(color: bgColor, borderRadius: BorderRadius.circular(30)),
                child: Image.asset(
                  DesignConfiguration.setPngPath("image"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        });
  }
}
