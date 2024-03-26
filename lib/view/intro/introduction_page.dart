import 'package:flutter/material.dart';
import 'package:responsive_portfolio/view%20model/responsive.dart';
import 'package:responsive_portfolio/view/intro/animated_image_container.dart';
import 'package:responsive_portfolio/view/intro/component/menu_button.dart';
import 'package:responsive_portfolio/view/intro/component/social_media_list.dart';

class Introdunction extends StatelessWidget {
  const Introdunction({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Row(
      children: [
        widthGap(size, 0.01),
        if (!Responsive.isLargeMobile(context)) MenuButton(ontap: () => Scaffold.of(context).openDrawer()),
        widthGap(size, 0.02),
        if (!Responsive.isLargeMobile(context)) const SocialMediaList(),
        widthGap(size, 0.07),
        const AnimatedImageContainer(),
        const Spacer(),
      ],
    );
  }

  SizedBox widthGap(Size size, double value) => SizedBox(width: size.width * value);
}
