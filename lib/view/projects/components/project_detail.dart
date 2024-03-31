import 'package:flutter/material.dart';
import 'package:responsive_portfolio/res/constants.dart';
import 'package:responsive_portfolio/view%20model/responsive.dart';
import 'package:responsive_portfolio/view/projects/components/project_link.dart';

class ProjectDetail extends StatelessWidget {
  final int index;
  const ProjectDetail({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Text(
            "My Project",
            maxLines: 1,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
            overflow: TextOverflow.ellipsis,
          ),
        ),
        SizedBox(height: Responsive.isMobile(context) ? defaultPadding / 2 : defaultPadding),
        Text(
          "Project Description Project Description Project Description Project Description Project Description Project Description Project Description Project Description Project Description Project Description Project Description Project Description Project Description Project Description Project Description Project Description Project Description Project Description  Project Description  Project Description  Project Description  Project Description  Project Description  ",
          style: const TextStyle(
            color: Colors.grey,
          ),
          maxLines: textMaxLine(context),
          overflow: TextOverflow.ellipsis,
        ),
        const Spacer(),
        // dont type previous page it will give an unexpected error
        ProjectLinks(index: index),
        const SizedBox(height: defaultPadding / 2),
      ],
    );
  }

  int textMaxLine(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    // if (width > 700 && width > 750) {
    //   return 3;
    // } else if (width < 470) {
    //   return 2;
    // } else if (width > 600 && width < 700) {
    //   return 6;
    // } else if (width > 900 && width < 1060) {
    //   return 6;
    // } else {
    //   return 4;
    // }
    return size.width > 700 && size.width < 750
        ? 3
        : size.width < 470
            ? 2
            : size.width > 600 && size.width < 700
                ? 6
                : size.width > 900 && size.width < 1060
                    ? 6
                    : 4;
  }
}
