import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_portfolio/res/constants.dart';
import 'package:responsive_portfolio/view/certifications/components/certificate_stack.dart';
import 'package:responsive_portfolio/view/projects/bloc/project_bloc.dart';

class CertificateGrid extends StatelessWidget {
  final int crossAxisCount;
  final double aspectRatio;
  const CertificateGrid({super.key, required this.crossAxisCount, this.aspectRatio = 1.0});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProjectBloc, ProjectState>(
      buildWhen: (previous, current) {
        if (current is ProjectHoverd) {
          return true;
        }
        return false;
      },
      builder: (context, state) {
        return GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: crossAxisCount, childAspectRatio: aspectRatio),
          itemCount: 10,
          itemBuilder: (context, index) {
            ProjectHoverd? projectHoverd;
            if (state is ProjectHoverd) {
              projectHoverd = state;
            }
            return AnimatedContainer(
              duration: Durations.long2,
              margin: const EdgeInsets.all(defaultPadding),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(defaultPadding + 10),
                  gradient: const LinearGradient(colors: [Colors.pinkAccent, blueColor]),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(-2, 0),
                      color: pinkColor,
                      blurRadius: (projectHoverd?.i == index && projectHoverd?.isHovered == true) ? 25 : 10,
                    ),
                    BoxShadow(
                      offset: const Offset(2, 0),
                      color: blueColor,
                      blurRadius: (projectHoverd?.i == index && projectHoverd?.isHovered == true) ? 25 : 10,
                    ),
                  ]),
              child: CertificateStack(
                index: index,
              ),
            );
          },
        );
      },
    );
  }
}
