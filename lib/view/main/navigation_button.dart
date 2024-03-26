import 'package:flutter/material.dart';
import 'package:responsive_portfolio/res/constants.dart';

class NavigationButton extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;
  const NavigationButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: Text(
        text,
        style: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: primaryColor,
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }
}
