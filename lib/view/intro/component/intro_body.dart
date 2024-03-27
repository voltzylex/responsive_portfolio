import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:responsive_portfolio/res/constants.dart';
import 'package:responsive_portfolio/res/helpers.dart';
import 'package:responsive_portfolio/view%20model/responsive.dart';
import 'package:responsive_portfolio/view/intro/animated_image_container.dart';
import 'package:responsive_portfolio/view/intro/component/animated_description.dart';
import 'package:responsive_portfolio/view/intro/component/combine_subtitle.dart';
import 'package:responsive_portfolio/view/intro/component/download_button.dart';
import 'package:responsive_portfolio/view/intro/component/personal_portfolio%20_text.dart';

class IntroBody extends StatelessWidget {
  const IntroBody({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    printLog("Screen Width is ${size.width}");
    return Row(
      children: [
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (!Responsive.isDesktop(context)) ...[
                SizedBox(
                  height: size.height * 0.06,
                ),
                SizedBox(width: size.width * 0.23),
                const AnimatedImageContainer(
                  width: 150,
                  height: 200,
                ),
                SizedBox(height: size.height * 0.1),
              ],
              const Responsive(
                  desktop: MyPortfolioText(start: 40, end: 50),
                  largeMobile: MyPortfolioText(start: 40, end: 35),
                  mobile: MyPortfolioText(start: 10, end: 30),
                  tablet: MyPortfolioText(start: 50, end: 40)),
              if (kIsWeb && Responsive.isLargeMobile(context))
                Container(
                  height: defaultPadding,
                  color: Colors.transparent,
                ),
              const CombineSubtitleText(),
              const SizedBox(height: defaultPadding / 2),
              const Responsive(
                desktop: AnimatedDescriptionText(start: 14, end: 15),
                largeMobile: AnimatedDescriptionText(start: 14, end: 12),
                mobile: AnimatedDescriptionText(start: 14, end: 12),
                tablet: AnimatedDescriptionText(start: 17, end: 14),
              ),
              const SizedBox(
                height: defaultPadding * 2,
              ),
              const DownloadButton(),
            ],
          ),
        ),
        const Spacer(),
        if (Responsive.isDesktop(context)) const AnimatedImageContainer(),
        const Spacer()
      ],
    );
  }
}
