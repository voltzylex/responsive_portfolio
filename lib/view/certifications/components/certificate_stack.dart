import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_portfolio/res/constants.dart';
import 'package:responsive_portfolio/view/projects/bloc/project_bloc.dart';

class CertificateStack extends StatelessWidget {
  final int index;
  const CertificateStack({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ProjectBloc>();
    return MouseRegion(
      onEnter: (event) {
        bloc.add(HoveredEvent(i: index, isHovered: true));
      },
      onExit: (event) {
        bloc.add(HoveredEvent(i: index, isHovered: false));
      },
      // borderRadius: BorderRadius.circular(defaultPadding + 10),
      onHover: (value) {},
      // onTap: () {},
      child: AnimatedContainer(
          padding: const EdgeInsets.all(defaultPadding),
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: bgColor),
          duration: const Duration(milliseconds: 500),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Flutter Rest Mobile App",
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: defaultPadding,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "skills",
                      style: TextStyle(color: Colors.amber),
                    ),
                    Text(
                      " flutter ",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
                const SizedBox(
                  height: defaultPadding / 2,
                ),
                const Text.rich(
                  maxLines: 1,
                  TextSpan(
                      text: 'Skills : ',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      children: [
                        TextSpan(
                          text: "Credential",
                          style: TextStyle(color: Colors.grey, overflow: TextOverflow.ellipsis),
                        )
                      ]),
                ),
                const SizedBox(
                  height: defaultPadding,
                ),
                InkWell(
                  onTap: () {
                    // launchUrl(Uri.parse(certificateList[index].credential));
                  },
                  child: Container(
                    height: 40,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient: LinearGradient(colors: [
                          Colors.pink,
                          Colors.blue.shade900,
                        ]),
                        boxShadow: const [
                          BoxShadow(color: Colors.blue, offset: Offset(0, -1), blurRadius: 5),
                          BoxShadow(color: Colors.red, offset: Offset(0, 1), blurRadius: 5),
                        ]),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Credentials',
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          CupertinoIcons.arrow_turn_up_right,
                          color: Colors.white,
                          size: 10,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
