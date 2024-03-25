// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:responsive_portfolio/res/constants.dart';
import 'package:responsive_portfolio/res/widgets/design.dart';
import 'package:responsive_portfolio/view%20model/responsive.dart';

class AnimatedImageContainer extends StatefulWidget {
  const AnimatedImageContainer({
    super.key,
    this.height = 300,
    this.width = 250,
  });
  final double? height;
  final double? width;
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
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return AnimatedBuilder(
        animation: _animationController,
        builder: (context, child) {
          // printLog("Animated controller value is ${_animationController.value}");
          final value = _animationController.value;
          return Transform.translate(
            offset: Offset(0, 10 * value),
            child: Container(
              height: widget.height,
              width: widget.width,
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
              padding: const EdgeInsets.all(defaultPadding / 4),
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(color: bgColor, borderRadius: BorderRadius.circular(30)),
                height: Responsive.isLargeMobile(context)
                    ? size.height * 0.14
                    : Responsive.isTablet(context)
                        ? size.height * 0.15
                        : widget.height,
                width: Responsive.isLargeMobile(context)
                    ? size.width * 0.25
                    : Responsive.isTablet(context)
                        ? size.width * 0.15
                        : widget.width,
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
