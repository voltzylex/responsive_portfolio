import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_portfolio/res/constants.dart';
import 'package:responsive_portfolio/res/helpers.dart';
import 'package:responsive_portfolio/view/projects/bloc/project_bloc.dart';
import 'package:responsive_portfolio/view/projects/components/project_detail.dart';

class ProjectStack extends StatelessWidget {
  final int index;
  const ProjectStack({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ProjectBloc>();
    return MouseRegion(
      onEnter: (event) {
        printLog("Mouse enter");
        bloc.add(HoveredEvent(i: index, isHovered: true));
      },
      onExit: (event) {
        bloc.add(HoveredEvent(i: index, isHovered: false));
        printLog("Mouse Exit");
      },
      // borderRadius: BorderRadius.circular(defaultPadding + 10),
      onHover: (value) {},
      // onTap: () {},
      child: AnimatedContainer(
        padding: const EdgeInsets.all(defaultPadding).copyWith(),
        duration: Durations.long2,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(defaultPadding + 10),
        ),
        child: ProjectDetail(index: index),
      ),
    );
  }
}
