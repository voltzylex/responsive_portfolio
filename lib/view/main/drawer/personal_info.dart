import 'package:flutter/material.dart';
import 'package:responsive_portfolio/res/constants.dart';
import 'package:responsive_portfolio/view/main/drawer/area_info.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: defaultPadding / 2),
        AreaInfo(title: "Contact", text: "+917011822369"),
        AreaInfo(title: "Email", text: "baymax732001@gmail.com"),
        AreaInfo(
          title: "Linkedin",
          text: "@sushil-kumar-9821a6194",
          url: "www.linkedin.com/in/sushil-kumar-9821a6194",
        ),
        AreaInfo(
          title: "Github",
          text: "@voltzylex",
          url: "https://github.com/voltzylex",
        ),
        SizedBox(height: defaultPadding),
        Text('Skills', style: TextStyle(color: Colors.white)),
        SizedBox(height: defaultPadding),
      ],
    );
  }
}
