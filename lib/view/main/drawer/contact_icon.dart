import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_portfolio/res/widgets/design.dart';

class ContactIcon extends StatelessWidget {
  const ContactIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        iconImage("linkedin"),
        iconImage("github"),
        const Spacer(),
      ],
    );
  }

  SvgPicture iconImage(String name) =>
      SvgPicture.asset(DesignConfiguration.setSvgPath(name));
}
