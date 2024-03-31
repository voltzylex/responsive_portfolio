import 'package:flutter/material.dart';
import 'package:responsive_portfolio/res/constants.dart';
import 'package:responsive_portfolio/view%20model/responsive.dart';
import 'package:responsive_portfolio/view/projects/components/project_grid.dart';
import 'package:responsive_portfolio/view/projects/components/title_text.dart';

class ProjectView extends StatelessWidget {
  const ProjectView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          if (Responsive.isLargeMobile(context)) const SizedBox(height: defaultPadding),
          const TittleText(title: "Project", prefix: "Latest"),
          const SizedBox(
            height: defaultPadding,
          ),
          const Expanded(
            child: Responsive(
              desktop: ProjectGrid(crossAxisCount: 3),
              extraLargeScreen: ProjectGrid(crossAxisCount: 4),
              largeMobile: ProjectGrid(crossAxisCount: 1, ratio: 1.8),
              mobile: ProjectGrid(crossAxisCount: 1, ratio: 1.5),
              tablet: ProjectGrid(ratio: 1.4, crossAxisCount: 2),
            ),
          ),
        ],
      ),
    );
  }
}
