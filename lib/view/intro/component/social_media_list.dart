import 'package:flutter/material.dart';
import 'package:responsive_portfolio/res/constants.dart';
import 'package:responsive_portfolio/view/intro/component/social_media_icon_column.dart';

class SocialMediaList extends StatelessWidget {
  const SocialMediaList({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 0.0, end: 1.0),
      duration: Durations.long2,
      builder: (context, value, child) => Transform.scale(
        scale: value,
        child: Column(
          children: [
            const Spacer(),
            RotatedBox(
              quarterTurns: -3,
              child: Text(
                "Follow Me",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: defaultPadding / 4),
              height: size.height * 0.07,
              width: 3,
              decoration: BoxDecoration(color: primaryColor, borderRadius: BorderRadius.circular(defaultPadding)),
            ),
            const SocialMediaIconColumn(),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
