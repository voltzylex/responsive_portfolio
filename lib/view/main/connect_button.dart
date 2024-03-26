import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_portfolio/res/constants.dart';

class Connectbutton extends StatelessWidget {
  const Connectbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Container(
        width: 150,
        height: 60,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [pinkColor, blueColor],
          ),
          borderRadius: BorderRadius.circular(defaultPadding + 10),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              FontAwesomeIcons.whatsapp,
              color: Colors.greenAccent,
              size: 15,
            ),
            const SizedBox(
              width: defaultPadding / 2,
            ),
            Text(
              "Whatsapp",
              style: Theme.of(context)
                  .textTheme
                  .labelSmall!
                  .copyWith(fontWeight: FontWeight.bold, color: primaryColor, letterSpacing: 1.2),
            ),
          ],
        ),
      ),
    );
  }
}
