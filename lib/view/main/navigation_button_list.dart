import 'package:flutter/material.dart';
import 'package:responsive_portfolio/res/constants.dart';
import 'package:responsive_portfolio/view%20model/responsive.dart';
import 'package:responsive_portfolio/view/main/main_view.dart';
import 'package:responsive_portfolio/view/main/navigation_button.dart';

class NavigationButtonList extends StatelessWidget {
  const NavigationButtonList({super.key});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween(begin: 0.0, end: 1.0),
      duration: const Duration(milliseconds: 500),
      builder: (context, value, child) => Transform.scale(
        scale: value,
        child: Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              NavigationButton(
                text: "Home",
                onTap: () => pageController.animateToPage(0, duration: Durations.short4, curve: Curves.bounceIn),
              ),
              if (!Responsive.isLargeMobile(context)) const NavigationButton(text: "About us", onTap: null),
              NavigationButton(
                text: "Project",
                onTap: () => pageController.animateToPage(1, duration: Durations.short4, curve: Curves.bounceIn),
              ),
              NavigationButton(
                text: "Certification",
                onTap: () => pageController.animateToPage(2, duration: Durations.short4, curve: Curves.bounceIn),
              ),
              const NavigationButton(text: "Archievment", onTap: null),
            ],
          ),
        ),
      ),
    );
  }
}
