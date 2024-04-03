import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_portfolio/view/certifications/components/cerificate_grid.dart';
import 'package:responsive_portfolio/view/projects/bloc/project_bloc.dart';
import 'package:responsive_portfolio/view/projects/components/title_text.dart';

import '../../res/constants.dart';
import '../../view model/responsive.dart';

class Certifications extends StatelessWidget {
  const Certifications({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProjectBloc(),
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isLargeMobile(context))
              const SizedBox(
                height: defaultPadding,
              ),
            const TitleText(prefix: 'Certifications & ', title: 'License'),
            const SizedBox(
              height: defaultPadding,
            ),
            const Expanded(
                child: Responsive(
                    desktop: CertificateGrid(
                      crossAxisCount: 3,
                      aspectRatio: 1.5,
                    ),
                    extraLargeScreen: CertificateGrid(crossAxisCount: 4, aspectRatio: 1.6),
                    largeMobile: CertificateGrid(crossAxisCount: 1, aspectRatio: 1.8),
                    mobile: CertificateGrid(crossAxisCount: 1, aspectRatio: 1.4),
                    tablet: CertificateGrid(
                      crossAxisCount: 2,
                      aspectRatio: 1.7,
                    )))
          ],
        ),
      ),
    );
  }
}
