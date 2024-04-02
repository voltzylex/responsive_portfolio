import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_portfolio/res/constants.dart';
import 'package:responsive_portfolio/view/certifications/components/certificate_detail.dart';
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
        padding: const EdgeInsets.all(defaultPadding).copyWith(),
        duration: Durations.long2,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(defaultPadding + 10),
        ),
        child: CertificateDetail(index: index),
      ),
    );
  }
}
