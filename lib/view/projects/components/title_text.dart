import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:responsive_portfolio/res/constants.dart';
import 'package:responsive_portfolio/view%20model/responsive.dart';

class TitleText extends StatelessWidget {
  final String title;
  final String prefix;
  const TitleText({super.key, required this.title, required this.prefix});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        projectText(prefix, context),
        kIsWeb && Responsive.isDesktop(context)
            ? ShaderMask(
                shaderCallback: (bounds) => const LinearGradient(
                  colors: [pinkColor, cyanColor],
                  end: Alignment.centerRight,
                  begin: Alignment.centerLeft,
                ).createShader(bounds),
                child: projectText(" $title", context),
              )
            : projectText(" $title", context)
      ],
    );
  }

  Text projectText(String prefix, BuildContext context) => Text(
        prefix,
        style: Theme.of(context).textTheme.titleLarge?.copyWith(
              color: primaryColor,
              fontWeight: FontWeight.bold,
              fontSize: !Responsive.isDesktop(context)
                  ? Responsive.isLargeMobile(context)
                      ? 20
                      : 30
                  : 50,
            ),
      );
}
