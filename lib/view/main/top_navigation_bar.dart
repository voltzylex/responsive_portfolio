import 'package:flutter/material.dart';
import 'package:responsive_portfolio/res/constants.dart';
import 'package:responsive_portfolio/res/widgets/design.dart';
import 'package:responsive_portfolio/view%20model/responsive.dart';
import 'package:responsive_portfolio/view/intro/component/menu_button.dart';
import 'package:responsive_portfolio/view/main/connect_button.dart';
import 'package:responsive_portfolio/view/main/navigation_button_list.dart';

class TopNavigationBar extends StatelessWidget {
  const TopNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        // is large mobile means widht is less than 700 so if the screen width is
        // less than 700
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Responsive.isLargeMobile(context)
              ? MenuButton(ontap: () => Scaffold.of(context).openDrawer())
              : Image.asset(DesignConfiguration.setPngPath("triangle_icon")),
        ),
        const Spacer(
          flex: 2,
        ),
        if (!Responsive.isLargeMobile(context)) const NavigationButtonList(),
        const Spacer(
          flex: 2,
        ),
        const Connectbutton(),
        const Spacer(),
      ],
    );
  }
}
