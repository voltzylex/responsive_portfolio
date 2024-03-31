import 'package:flutter/material.dart';
import 'package:responsive_portfolio/res/constants.dart';
import 'package:responsive_portfolio/view/projects/components/project_stack.dart';

class ProjectGrid extends StatelessWidget {
  final int crossAxisCount;
  final double? ratio;
  const ProjectGrid({super.key, required this.crossAxisCount, this.ratio = 1.0});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: crossAxisCount, childAspectRatio: ratio!),
      itemBuilder: (context, index) {
        return AnimatedContainer(
          duration: Durations.long2,
          margin: const EdgeInsets.all(defaultPadding),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(defaultPadding + 10),
              gradient: const LinearGradient(colors: [Colors.pinkAccent, blueColor]),
              boxShadow: const [
                BoxShadow(offset: Offset(-2, 0), color: pinkColor, blurRadius: 20),
                BoxShadow(offset: Offset(2, 0), color: blueColor, blurRadius: 20),
              ]),
          child: ProjectStack(index: index),
        );
      },
    );
  }
}
