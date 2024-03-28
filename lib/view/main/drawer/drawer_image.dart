import 'package:flutter/material.dart';
import 'package:responsive_portfolio/res/constants.dart';
import 'package:responsive_portfolio/res/widgets/design.dart';

class DrawerImage extends StatelessWidget {
  const DrawerImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      padding: const EdgeInsets.all(defaultPadding * 0.25),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(colors: [pinkColor, blueColor]),
        boxShadow: [
          BoxShadow(color: pinkColor, blurRadius: 10, offset: Offset(0, -2)),
          BoxShadow(color: blueColor, blurRadius: 10, offset: Offset(0, 2)),
        ],
      ),
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        child: Image.asset(
          DesignConfiguration.setPngPath("image"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
