// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_portfolio/res/constants.dart';
import 'package:responsive_portfolio/res/widgets/design.dart';

class SocialMediaIcon extends StatelessWidget {
  final VoidCallback? onTap;
  final String iconName;
  const SocialMediaIcon({super.key, this.onTap, required this.iconName});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(defaultPadding),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: defaultPadding * 0.4),
        child: SvgPicture.asset(
          DesignConfiguration.setSvgPath(iconName),
          color: primaryColor,
        ),
      ),
    );
  }
}
