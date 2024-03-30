import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_portfolio/res/constants.dart';
import 'package:responsive_portfolio/res/widgets/design.dart';

class KnowledgeText extends StatelessWidget {
  final String knowledge;
  const KnowledgeText({super.key, required this.knowledge});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(DesignConfiguration.setSvgPath("check")),
        const SizedBox(width: defaultPadding / 2),
        Text(
          knowledge,
          style: const TextStyle(color: primaryColor),
        ),
      ],
    );
  }
}
