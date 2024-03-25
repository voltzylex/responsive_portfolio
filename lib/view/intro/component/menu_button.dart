import 'package:flutter/material.dart';
import 'package:responsive_portfolio/res/constants.dart';

class MenuButton extends StatelessWidget {
  final VoidCallback ontap;
  const MenuButton({super.key, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        InkWell(
          onTap: ontap,
          borderRadius: BorderRadius.circular(20),
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0.0, end: 1.0),
            duration: const Duration(milliseconds: 500),
            builder: (context, value, child) => Container(
              height: defaultPadding * 2 * value,
              width: defaultPadding * 2 * value,
              decoration: BoxDecoration(color: blackColor, borderRadius: BorderRadius.circular(10), boxShadow: const [
                BoxShadow(blurRadius: 0, color: blueColor, offset: Offset(-1, -1)),
                BoxShadow(blurRadius: 0, color: pinkColor, offset: Offset(1, 1)),
              ]),
              child: ShaderMask(
                shaderCallback: (bounds) {
                  return const LinearGradient(colors: [blueColor, pinkColor]).createShader(bounds);
                },
                child: Icon(
                  Icons.menu,
                  size: defaultPadding * 1.2 * value,
                ),
              ),
            ),
          ),
        ),
        const Spacer(
          flex: 5,
        ),
      ],
    );
  }
}
