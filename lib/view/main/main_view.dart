import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:responsive_portfolio/res/constants.dart';
import 'package:responsive_portfolio/view%20model/responsive.dart';
import 'package:responsive_portfolio/view/main/drawer/drawer.dart';
import 'package:responsive_portfolio/view/main/navigation_button_list.dart';
import 'package:responsive_portfolio/view/main/top_navigation_bar.dart';

final pageController = PageController();

class MainView extends StatelessWidget {
  const MainView({super.key, required this.pages});
  final List<Widget> pages;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      body: Builder(builder: (context) {
        return Column(
          children: [
            kIsWeb && !Responsive.isLargeMobile(context)
                ? const SizedBox(
                    height: defaultPadding * 2,
                  )
                : const SizedBox(
                    height: defaultPadding / 2,
                  ),
            const SizedBox(height: 80, child: TopNavigationBar()),
            if (Responsive.isLargeMobile(context)) const NavigationButtonList(),
            Expanded(
              flex: 9,

              child: PageView(
                controller: pageController,
                scrollDirection: Axis.vertical,
                children: pages,
              ),
            )
          ],
        );
      }),
    );
  }
}
