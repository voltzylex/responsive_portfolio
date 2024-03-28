import 'package:flutter/material.dart';
import 'package:responsive_portfolio/res/constants.dart';
import 'package:responsive_portfolio/view/main/drawer/about.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return const Drawer(
      backgroundColor: primaryColor,
      child: SingleChildScrollView(
        child: Column(
          children: [
            About(),
            // Container(
            //   color: bgColor,
            //   child: const Padding(
            //     padding: EdgeInsets.all(defaultPadding / 2),
            //     child: Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         PersonalInfo(),
            //         // MySKills(),
            //         // Knowledges(),
            //         Divider(),
            //         SizedBox(
            //           height: defaultPadding,
            //         ),
            //         // ContactIcon(),
            //       ],
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
