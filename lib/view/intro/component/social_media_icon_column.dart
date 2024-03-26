import 'package:flutter/material.dart';
import 'package:responsive_portfolio/view/intro/component/social_media_icon.dart';

class SocialMediaIconColumn extends StatelessWidget {
  const SocialMediaIconColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SocialMediaIcon(iconName: "linkedin"),
        SocialMediaIcon(iconName: "github"),
        SocialMediaIcon(iconName: "twitter"),
        SocialMediaIcon(iconName: "behance"),
      ],
    );
  }
}
